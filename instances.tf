#Creating frontend instance

resource "aws_instance" "frontandback" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = "${aws_subnet.publicnet1.id}"
  key_name = var.keys
  security_groups = [ "${aws_security_group.terraformhomework.id}" ]
  user_data = file("ubuntu.sh")

  tags = {
    Name = "frontandback"
  }
}

