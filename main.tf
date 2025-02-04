# Define the Terraform provider to use
# See more at https://registry.terraform.io/providers/CiscoDevNet/iosxe/latest

terraform {
  required_providers {
    iosxe = {
      version = "0.1.1"
      source  = "CiscoDevNet/iosxe"
    }
  }
}

# Use the Cisco IOS XE Provider
provider "iosxe" {
  request_timeout = 30
  insecure       = false # Set to true only in non-production environments
  address        = "192.168.1.1" # Replace with your device's IP address
  username       = "admin"       # Replace with your username
  password       = "password"    # Replace with your password
}

# Adding VLAN
resource "iosxe_rest" "vlan_example_put" {
  method = "PUT"
  path   = "/data/Cisco-IOS-XE-native:native/vlan/vlan-list=511"
  payload = jsonencode({
    "Cisco-IOS-XE-vlan:vlan-list": {
      "id"  = "511"
      "name" = "VLAN511"
    }
  })
}
