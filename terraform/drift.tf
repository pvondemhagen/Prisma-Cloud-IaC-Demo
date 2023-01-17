resource "aws_security_group" "drift-sg" {
  # security group is open to the world in SSH port
  # resource in will have port 22 or 3389 added
  name        = "drift-sg"
  description = "Prisma-IAC-Demo - SG with drift from IaC"
  #vpc_id      = aws_vpc.web_vpc.id

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = [
    "0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
    "0.0.0.0/0"]
  }
  tags = {
    git_org   = "davesc63"
    git_repo  = "Prisma-Cloud-IaC-Demo"
    customer  = "Demo-Customer-Name-Here"
    yor_trace = ""
  }
}