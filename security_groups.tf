resource "aws_security_group" "terraformhomework" {
  name        = "terraformhomework"
  description = "Allow traffic for nginx, mysql + ICMP and SSH for checks"
  vpc_id      = var.vpc_id

  ingress {
    description = "allow http traffic on port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "allow ssh traffic on port 22"
    from_port   = 22
    to_port     = 22 
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]              
  }

  ingress {
    description = "allow mysql traffic on port 3306"
    from_port   = 3306 
    to_port     = 3306 
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]              
  }

  ingress {
    description = "allow ICMP traffic"
    from_port   = "-1"
    to_port     = "-1"
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraformhomework"
  }
}
