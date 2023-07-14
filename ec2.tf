data "aws_ami" "amimumbai" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "firstinstance" {
  ami           = data.aws_ami.amimumbai.id
  instance_type = var.instancetype
  tags = {
    Name = upper("instancevariable")
  }
}
