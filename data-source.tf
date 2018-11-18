#################
# AMI  (amazon linux)
##########
data "aws_ami" "basic_ami" {
  most_recent      = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn-ami-hvm*"]
  }
   filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  owners     = ["amazon"]
}

###################################
#      User Data
###############################

data "template_file" "init_template" {
  template = "${file("${path.module}/userdata.txt")}"
}