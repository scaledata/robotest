#
# OS configuration
#

variable "oss" {
  description = "Map of supported Linux distributions"
  type        = "map"

  default = {
    "redhat:7.9"    = "toTemplate1"
    "redhat7.9"    = "toTemplate1"
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