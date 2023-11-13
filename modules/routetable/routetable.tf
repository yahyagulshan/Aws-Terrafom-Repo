resource "aws_route_table" "public_route_table" {
  vpc_id = var.vpc_id

  # route {
  #   cidr_block = "0.0.0.0/0"
  #   gateway_id = var.gateway_id
  # }
}


resource "aws_route_table_association" "public_route_table_association" {
  subnet_id = [module.aws_subnet.public]
  route_table_id = aws_route_table.public_route_table.id
}

############################################
# resource "aws_route_table" "public" {
  

#   vpc_id = var.vpc_id


# }

# resource "aws_route_table_association" "public" {


#   subnet_id      = element(aws_subnet.public[*].id, count.index)
#   route_table_id = aws_route_table.public[0].id
# }

##############################################
