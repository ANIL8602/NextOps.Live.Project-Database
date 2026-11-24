resource_group_name = "nextops-dev-rg"

location = "central india"

vnet_name = "nextops-dev-vnet"

address_space = ["10.140.0.0/16"]

tags = {
  project     = "Next.Ops.Live"
  environment = "dev"
  managed_by  = "Terraform"
}


subnets = {
  frontend = ["10.140.1.0/24"]
  backend  = ["10.140.2.0/24"]
  database = ["10.140.3.0/24"]
}


nsg_config = {
  frontend = {
    nsg_name = "nextops-frontend-nsg"

    security_rules = [
      {
        name                   = "Allow-HTTP"
        priority               = 100
        protocol               = "Tcp"
        source_address_prefix  = "*"
        destination_port_range = "22"
      },
      {
        name                   = "Allow-HTTPS"
        priority               = 110
        protocol               = "Tcp"
        source_address_prefix  = "*"
        destination_port_range = "443"
      }
    ]
  }

  backend = {
    nsg_name = "nextops-backend-nsg"

    security_rules = [
      {
        name                   = "Allow-Frontend-Backend"
        priority               = 100
        protocol               = "Tcp"
        source_address_prefix  = "10.140.1.0/24"
        destination_port_range = "8000"
      }
    ]
  }

  database = {
    nsg_name = "nextops-database-nsg"

    security_rules = [
      {
        name                   = "Allow-PostgreSQL"
        priority               = 100
        protocol               = "Tcp"
        source_address_prefix  = "10.140.2.0/24"
        destination_port_range = "5432"
      }
    ]
  }
}


admin_username = "azureadmin"
admin_password = "strongpassword@123"
vm_size        = "Standard_B2als_v2"




