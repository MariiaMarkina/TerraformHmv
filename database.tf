resource "aws_db_subnet_group" "dbnetgroup" {
  name       = "dbnetgroup"
  subnet_ids = [aws_subnet.publicnet1.id, aws_subnet.privatenet1.id]

  tags = {
    Name = "dbnetgroup"
  }
}


resource "aws_db_instance" "mysqldatabase" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0.17"
  instance_class       = "db.t2.micro"
  name                 = "mysqldatabase"
  username             = "admin"
  password             = "nimdanimda"
#  availability_zone = var.az
  db_subnet_group_name = aws_db_subnet_group.dbnetgroup.name
  skip_final_snapshot = true
  vpc_security_group_ids = [ "${aws_security_group.terraformhomework.id}" ]
  tags = {
    Name = "mysqldatabase"
   }

}
