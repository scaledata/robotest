/*
Copyright 2020 Gravitational, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package constants

const (
	// FieldCommandErrorReport defines a logging field to store the error message for a failed command
	FieldCommandErrorReport = "errmsg"

	// FieldCommandError defines a logging field that determines if the command has failed
	FieldCommandError = "cmderr"

	// FieldProvisioner defines a logging field to specify the name of the used provisioner
	FieldProvisioner = "provisioner"

	// FieldCluster defines a logging field to specify the name of the cluster
	FieldCluster = "cluster"

	// SharedDirMask is a mask for shared directories
	SharedDirMask = 0755

	// SharedReadMask is a mask for shared directories
	SharedReadMask = 0644

	// SharedReadWriteMask is a mask for a shared file with world read/write access
	SharedReadWriteMask = 0666

	// OSRedHat is RedHat Enterprise Linux
	OSRedHat = "redhat"

	// DeviceMapper is devicemapper storage driver name
	DeviceMapper = "devicemapper"

	// Overlay is overlay storage driver name
	Overlay = "overlay"

	// Overlay2 is version 2 of overlay storage driver
	Overlay2 = "overlay2"

	// Loopback is local storage
	Loopback = "loopback"

	// ManifestStorageDriver is empty string identifying that install should use driver defined by the manifest
	ManifestStorageDriver = ""

	// GravitySELinuxEnv defines the environment variable that controls whether to use SELinux
	GravitySELinuxEnv = "GRAVITY_SELINUX"
)

const (
	// AWS is the Amazon cloud
	AWS = "aws"
	// Azure is Microsoft Zzure cloud
	Azure = "azure"
	// GCE is Google Compute Engine cloud
	GCE = "gce"
	// Ops specifies a special cloud provider - a telekube Ops Center
	Ops = "ops"
	// Vsphere specifies local Vsphere cluster
	Vsphere = "vsphere"
)
