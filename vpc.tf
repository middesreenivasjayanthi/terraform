

# from here we called it as resource blocks.
# create vpc resource
resource "aws_vpc" "vpc01" {
  cidr_block = var.cidr_block

  tags = {
    Name = "main"
  }
}



