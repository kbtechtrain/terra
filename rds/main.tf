terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_db_instance" "suneelrds" {
  allocated_storage    = 10
  db_name              = "kb_db"
  engine               = "mysql"
  engine_version       = "8.0.33"
  instance_class       = "db.t3.micro"
  username             = "root"
  password             = "Q!w2e3r4"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
