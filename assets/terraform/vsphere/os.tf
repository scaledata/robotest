#
# OS configuration
#

variable "oss" {
  description = "Map of supported Linux distributions"
  type        = "map"

  default = {
    "redhat:7.9"    = "toTemplate1"
    "redhat7.9"    = "toTemplate1"
    "ubuntu:24"     = "gravity-2.0-e2e"
    "ubuntu24"     = "gravity-2.0-e2e"
  }
}

#variable "os" {
#  description = "Map of supported Linux distributions"
#  type        = "map"
#
#  default = {
#    "redhat:7.9"    = "toTemplate1"
#    "redhat7.9"    = "toTemplate1"
#  }
#}
