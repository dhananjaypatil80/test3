resource "aws_instance" "instance" {
  count = 1 
  ami                         = var.ami_id # us-east-1
   
  instance_type               = var.instance_type

 
  associate_public_ip_address = var.associate_public_ip
  availability_zone           = "ap-south-1a"
  key_name                    = "test-key"
  #security_groups             = aws_security_group.demosg.id
   vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = aws_subnet.public-subnet-1.id
  
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    volume_size           = var.volume_size
    volume_type           = "gp2"
    tags = {
      Name         = "Terraform-machine"
      application  = var.application
      organization = var.organization
    }
  }
  
  tags = {
    Name         = "Terraform-machine"
    application  = var.application
    organization = var.organization
  }
}

resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "ap-south-1a"
  size              = 10
  snapshot_id       = null
  type              = "gp2"
  tags = {
    Name         = "ebs_volume"
    application  = var.application
    organization = var.organization
  }
}



