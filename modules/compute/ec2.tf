// create an ec2 instance

resource "aws_instance" "web" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "aws_8am_batch"
  subnet_id = var.sub_id

  tags = {
    Name = var.ec2_tag
  }
}


 