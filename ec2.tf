locals {
  amazon_linux_ami = "ami-02c3627b04781eada"
}
resource "aws_instance" "my-ec2" {
  ami = local.amazon_linux_ami
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]
  subnet_id = aws_subnet.private-subnet-1a.id
  key_name = aws_key_pair.my-kp.key_name

  root_block_device {
    volume_type = "gp2"
    volume_size = "20"
  }

  ebs_block_device {
    device_name = "/dev/sdf"
    volume_type = "gp2"
    volume_size = "100"
  }

  tags = {
    Name = "my-instance"
  }
}
