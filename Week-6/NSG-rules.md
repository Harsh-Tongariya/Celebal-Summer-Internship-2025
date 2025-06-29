# NSG Rules for Each Tier

## Web Tier
- Allow: Inbound from Internet on port 80 (HTTP)
- Allow: Outbound to App Tier (10.0.2.0/24) on port 80
- Deny: Outbound to DB Tier

## App Tier
- Allow: Inbound from Web Tier (10.0.1.0/24) on port 80
- Allow: Outbound to DB Tier (10.0.3.0/24) on port 1433
- Deny: Outbound to Internet

## DB Tier
- Allow: Inbound from App Tier (10.0.2.0/24) on port 1433
- Deny: All outbound (except default Azure services if needed)
