# Terraform Configuration for Cisco IOS XE VLAN Management

This repository contains a Terraform configuration to manage VLANs on a Cisco IOS XE device using the `CiscoDevNet/iosxe` provider.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Configuration Details](#configuration-details)
- [Variables](#variables)
- [Security Considerations](#security-considerations)

## Prerequisites

Before using this configuration, ensure the following:

1. **Terraform Installed**: Ensure Terraform is installed on your system. You can download it from [here](https://www.terraform.io/downloads.html).
2. **Cisco IOS XE Device**: The target device must support RESTCONF and have the necessary YANG models enabled (e.g., `Cisco-IOS-XE-native` and `Cisco-IOS-XE-vlan`).
3. **Provider Version**: This configuration uses `CiscoDevNet/iosxe` provider version `0.1.1`.

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/cisco-iosxe-vlan.git
   cd cisco-iosxe-vlan
   ```
2. Update the `provider` block in the `main.tf` file with your device's IP address, username, and password.

3. Initialize Terraform:
  ```bash
  terraform init
  ```

4. Plan the changes:
  ```bash
  terraform plan
  ```

5. Apply the configuration:
  ```bash
  terraform apply
  ```

6. To destroy the configuration:
  ```bash
  terraform destroy
  ```
