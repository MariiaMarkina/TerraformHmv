# Creating subnets for frontend & backend and database 
resource "aws_subnet" "publicnet1" {
  vpc_id     = var.vpc_id
  cidr_block = "172.31.1.0/24"
  availability_zone = var.az
  map_public_ip_on_launch = true
  tags = {
    Name = "publicnet1"
  }
}
  
resource "aws_subnet" "privatenet1" {
  vpc_id     = var.vpc_id 
  cidr_block = "172.31.2.0/24"
  availability_zone = var.az2
  map_public_ip_on_launch = false

  tags = {
    Name = "privatenet1"
  }
}  

