# Consul-Module

Deploying a Consul cluster on AWS using Terraform.

<b> Prerequisites </b>
 
    Consul
    
    Terraform

    A HashiCorp Cloud Platform (HCP) account

    An AWS account and credentials
    
    Git


<b> Locals </b>

    vpc_region - This is the region where you deployed your VPC

    hvn_region - The HashiCorp Virtual Network (HVN) region.
    
    cluster_id - The HCP consul cluster ID. Use a unique name to identify your HCP Consul cluster. HCP will pre-populate it with a name following the pattern consul-quickstart-<unique-ID>.
  
    vpc_id - As you are using an existing VPC you need to provide Terraform with your VPC ID.
    
    private_route_table_id - A route table contains a set of rules, called routes, that are used to determine where network traffic from your subnet or gateway is directed.
    
    private_subnet1 and private_subnet2 - A subnet is a range of IP addresses in your VPC. You can launch AWS compute resources into a specific subnet.


Install Consul using CLI commands 

    wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
    sudo apt install consul
  
Create an account to HCP  

    https://portal.cloud.hashicorp.com/
    
Create a Consul Cluster and select a provider

 > AWS – Terraform

 > Copy the VPC ID, Route table ID and Subnet ID from your AWS and paste them in the Consul cluster you are creating

Autheticate Terraform with HCP
    
 > As we do not have any Service Principal Key, click the Generate service principal and key. Clone the code and paste it on your termina

Create a new terraform file and name it as main.tf 
    
 > Clone the code from the HashiCorp account accordingly and paste it in your file 
    
    
Install git using the ff command to be able to clone the git repository if it wasn’t installed yet.

    sudo apt install git
    
    
Use terraform init command to initialize modules, backend and provider plugins
    
    terraform init

Use terraform apply command to execute the action. It is used to deploy your module

    terraform apply
    
 > NOTE: It will take a while. Wait for 10 minutes and it will be successfully applied.



After inputting that command, you can now access Consul via browser by using the HCP:
    
    https://portal.cloud.hashicorp.com



