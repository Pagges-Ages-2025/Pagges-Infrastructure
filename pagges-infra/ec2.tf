resource "aws_instance" "pagges_ec2" {
  ami           = "ami-060a84cbcb5c14844"
  instance_type = "t3a.medium"

  tags = {
    Name  = "projeto-pagges"
    Owner = "projeto-pagges"
  }

  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  associate_public_ip_address          = true
  availability_zone                    = "us-east-2a"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = true
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  key_name                             = "Projeto-Pagges-Key"
  monitoring                           = false
}
