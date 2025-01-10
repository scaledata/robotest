package vsphere

// Config specifies the vcenter specific parameters
type Config struct {
	VsphereUser     string `json:"vsphere_user" yaml:"vsphere_user"`
	VspherePassword string `json:"vsphere_password" yaml:"vsphere_password"`
	VsphereServer   string `json:"vsphere_server" yaml:"vsphere_server"`
	Datacenter      string `json:"datacenter" yaml:"datacenter"`
	Cluster         string `json:"cluster" yaml:"cluster"`
	VmFolder        string `json:"vm_folder" yaml:"vm_folder"`
	Network         string `json:"network" yaml:"network"`
	NodeTag         string `json:"node_tag" yaml:"node_tag"`
	VmType          string `json:"vm_type" yaml:"vm_type"`
	Datastore       string `json:"datastore" yaml:"datastore"`
	ResourcePool    string `json:"resource_pool" yaml:"resource_pool"`
	SSHUser         string `json:"os_user" yaml:"os_user"`
	// SSHKeyPath specifies the location of the SSH private key for remote access
	SSHKeyPath string `json:"-" yaml:"ssh_key_path" validate:"required"`
	// SSHPublicKeyPath specifies the location of the public SSH key
	SSHPublicKeyPath string `json:"ssh_pub_key_path" yaml:"ssh_pub_key_path" validate:"required"`
	Template         string `json:"template" yaml:"template"` // TODO:Move this?
}
