resource "aws_instance" "web" {
  count         = 2
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = element(var.subnet_ids, count.index)
  security_groups = [var.security_group_id]

  # Decoupling dependency using a template file
  user_data = templatefile("${path.module}/user_data.sh", {
    private_ip       = "PLACEHOLDER"
    availability_zone = "PLACEHOLDER"
  })

  tags = {
    Name = "web-${count.index}"
  }
}

