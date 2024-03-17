data "aws_lb" "load_balancer" {
  name = var.load_balancer_name
}

resource "aws_api_gateway_vpc_link" "vpc_link" {
  name        = "self-order-management-api"
  target_arns = [data.aws_lb.load_balancer.arn]
}
