# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "Id-key"
  secret_key = "secret-key"
}

#Create VPC

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "main"
  }
}

#Create IG

resource "aws_internet_gateway" "my_vpc_igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "My VPC - Internet Gateway"
  }
}

#Creat Public Subnet

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Main"
  }
}

#create Route Table

resource "aws_route_table" "my_vpc_us_east_1a_public" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my_vpc_igw.id
    }

    tags = {
        Name = "Public Subnet Route Table."
    }
}

resource "aws_route_table_association" "my_vpc_us_east_1a_public" {
    subnet_id = aws_subnet.main.id
    route_table_id = aws_route_table.my_vpc_us_east_1a_public.id
}

resource "aws_instance" "terraform" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  key_name = "srevm-key"
  subnet_id = aws_subnet.main.id
  security_groups = [aws_security_group.TerraformEC2_Security.id]
  associate_public_ip_address = true

  tags = {
    Name = "TerraformSRE"
  }
}