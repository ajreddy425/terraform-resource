
resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.subnet_cidr
    tags={
        Name=var.subnet_tag
    }
  
}




// note : if you are representing the argument as a variable, then only you have to pass in the
// main arugument