𝗣𝗿𝗼𝗱𝘂𝗰𝘁𝗶𝗼𝗻-𝗴𝗿𝗮𝗱𝗲 𝗔𝗪𝗦 𝗡𝗲𝘁𝘄𝗼𝗿𝗸 𝗔𝗿𝗰𝗵𝗶𝘁𝗲𝗰𝘁𝘂𝗿𝗲 𝘂𝘀𝗶𝗻𝗴 𝗧𝗲𝗿𝗿𝗮𝗳𝗼𝗿𝗺 𝗶𝗻 ~𝟮 𝗺𝗶𝗻𝘂𝘁𝗲𝘀! (𝟮𝗔𝘇𝘀)

Complete VPC networking setup using Terraform, including:

a) Custom VPC (Dev, QA, Staging, Production)
b) 2 Public Subnets (for Load Balancer / NAT)
c) 6 Private Subnets (for presentation, application & database layers)
d) Internet Gateway for public connectivity
e) 2 NAT Gateways (one per AZ for high availability)
f) Public & Private Route Tables
g) Subnet-Route Table Associations

Infrastructure fully reproducible via Infrastructure as Code (IaC) - Terraform modular architecture 
High availability across multiple (2)AZs
Private workloads isolated from direct internet access
NAT Gateway per AZ to avoid single point of failure

Infrastructure provisioning time: ~2 minutes ⏱️
Infrastructure destruction time: ~1 minutes ⏱️
