##################################
# Security Groups 
#################################
resource "aws_security_group" "sentry-app-sg" {
    name = "sentry-app-sg"
    description = "app security group"
    vpc_id = "${aws_vpc.main.id}"
     ingress {
        from_port = 9000
        to_port = 9000
        protocol = "tcp"
        security_groups = ["${aws_security_group.sentry-elb-sg.id}"]
    }
     ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  egress {
        from_port = 0
        to_port = 65535
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags {
        Name = "sentry-app-sg"
    }
    depends_on = ["aws_security_group.sentry-elb-sg"]
}

resource "aws_security_group" "sentry-elb-sg" {
    name = "sentry-elb-sg"
    description = "elb security group"
    vpc_id = "${aws_vpc.main.id}"
     ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 65535
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags {
        Name = "sentry-elb-sg"
    }
}