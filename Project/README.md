# Azure Hub and Spoke Topology

This project implements a secure and scalable Hub-and-Spoke architecture on Microsoft Azure with centralized network appliances.

## Components

- Hub VNet: Azure Firewall, Application Gateway, DNS Forwarding VM, Bastion, VPN Gateway
- Spoke VNets:
  - Spoke 1: Web App
  - Spoke 2: Private Storage Account

## Key Features

- Secure Site-to-Site VPN from On-Premises to Azure
- Custom DNS Forwarding VM to resolve Azure and On-Prem DNS queries
- All traffic routed through Azure Firewall
- SSL Offloading via Application Gateway
- Public and Private frontends for AGW

## Deployment

Use the provided Bicep templates and scripts for deployment.
