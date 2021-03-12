resource "aws_instance" "mod_terr" {
  ami           =  var.my_ami
  instance_type =  var.instance_type
  key_name      =  var.key
  security_groups = [ "${aws_security_group.mod_grp.name}" ]

  root_block_device {
    volume_size = var.root_vol_dev
  }

  tags = {
    "name" = "mod_terr"
  }
}

resource "aws_security_group" "mod_grp" {
  name = "mod_grp"
  description = "allow my inbound traffic"

  ingress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 22
    protocol = "tcp"
    to_port = 22
  }

  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 0
    protocol = "-1"
    to_port = 0
  }

  tags = {
    "Name" = "mod_grp"
  }
}