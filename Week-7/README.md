# Azure Internal & External Load Balancer Setup

This project sets up:
- Public Load Balancer (ELB) for Web Tier
- Internal Load Balancer (ILB) for App Tier

## Structure
- **vnet.tf**: Creates VNet, Subnets, NSGs
- **vm_web_linux.tf** / **vm_web_windows.tf**: Web Tier VMs
- **external_lb.tf**: Public Load Balancer with HTTP rule
- **internal_lb.tf**: Internal Load Balancer with HTTP rule
- **install_apache.sh**: Installs Apache on Linux VMs
- **install_iis.ps1**: Installs IIS on Windows VMs
- **verify_lb.sh**: Tests load balancer response

## Verification
Run `verify_lb.sh` from a test VM in the same VNet.
