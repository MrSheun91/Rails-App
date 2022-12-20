
#Create VPC
resource "aws_vpc" "appvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy
  tags             = var.vpc-tags
}

# Create Internet Gateway 
resource "aws_internet_gateway" "appgateway" {
  vpc_id = aws_vpc.appvpc.id
}

# Create subnets 
resource "aws_subnet" "appsubnet" {
  vpc_id                  = aws_vpc.appvpc.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.subnet_availability_zone

  tags = {
    Name = "app subnet"
  }
}
 
resource "aws_subnet" "appsubnet1" {
  vpc_id                  = aws_vpc.appvpc.id
  cidr_block              = var.subnet1_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.subnet1_availability_zone

  tags = {
    Name = "app subnet 1"
  }
}

# Create Route Table
resource "aws_route_table" "route" {
  vpc_id                  = aws_vpc.appvpc.id

  route {
        cidr_block = var.route_cidr_block
        gateway_id = aws_internet_gateway.appgateway.id
    }

  tags = var.route_tags
}

# Associate Route Table
resource "aws_route_table_association" "rt1" {
    subnet_id = aws_subnet.appsubnet.id
    route_table_id = aws_route_table.route.id
}

resource "aws_route_table_association" "rt2" {
    subnet_id = aws_subnet.appsubnet1.id
    route_table_id = aws_route_table.route.id
}
