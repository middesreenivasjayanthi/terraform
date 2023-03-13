# create igw

resource "aws_internet_gateway" "igw01" {
  tags = {
    Name = "differigw01"
  }

}
#attach igw to vpc
resource "aws_internet_gateway_attachment" "igw-to-vpc" {
  internet_gateway_id = aws_internet_gateway.igw01.id
  vpc_id              = aws_vpc.vpc01.id
}
