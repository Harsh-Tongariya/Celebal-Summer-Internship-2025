# Azure Hub and Spoke Topology

This project implements a secure and scalable Hub-and-Spoke architecture on Microsoft Azure with centralized network appliances.

Objective
1. Establishes a secure connection between the on-premises data center and the hub VNet and Spoke VNets.
2. Provides custom DNS on the top of Spoke VNets as DNS Forwarding VM.
3. Resolve all the DNS quries for Azure to OnPremises, Azure to Azure and OnPremises to Azure.
4. All the traffic should be routed through Azure Firewall.
5. Internet traffic will land on Application Gateway Public Fronted IP.
6. On-Premises traffic will land on Application Gateway Private Fronted IP.
7. SSL Offloading will be implemented on top of Application Gateway.
8. Set up multiple listeners to route traffic to the backend with their respective set of configurations.


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
