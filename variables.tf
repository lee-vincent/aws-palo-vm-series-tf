# Terraform loads variables in the following order,
# with later sources taking precedence over earlier ones:
#     Locally exported Environment variables
#     The terraform.tfvars file, if present.
#     Any *.auto.tfvars processed in lexical order of their filenames.
#     Any -var and -var-file options on the command line, in the order they are provided.
#     This includes variables set by a Terraform Cloud workspace.

# AWS Variables
variable "environment" {
  type        = string
  description = "Infrastructure environment - dev, test, prod, etc."
  default     = "prod"
}
variable "aws_region" {
  type    = string
  default = "us-east-1"
}
variable "aws_zone" {
  type    = string
  default = "a"
}
variable "aws_prefix" {
  type        = string
  description = "prefix added to aws tags"
  default     = "tf-"
}
variable "wordpress_instance_type" {
  type        = string
  description = "ec2 instance type"
  default     = "t3.large"
}
# Follow step 0. in README - terraform will set this terraform variable ssh_key_name by
# looking for a local environment variable called TF_VAR_ssh_key_name
# exporting local environment variables prefixed with TF_VAR_ is just another way to
# set the values of terraform input variables 
# variable "ssh_key_name" {
#   type = string
# }
# Follow step 0. in README - terraform will set this terraform variable ssh_key_pub by
# looking for a local environment variable called TF_VAR_ssh_key_pub
# exporting local environment variables prefixed with TF_VAR_ is just another way to
# set the values of terraform input variables 
# variable "ssh_key_pub" {
#   type        = string
#   description = "public key material used to authenticate ssh connections to wordpress ec2 instance"
# }
# IP Address of SSH Client
variable "workstation_cidr" {
  type        = string
  description = "public ip address of ssh client that will be used in security groups providing access to wordpress ec2 instance"
  default     = "0.0.0.0/0"
}
# Wordpress Variables
# variable "wp_db_name" {
#   type        = string
#   sensitive   = true
#   default     = "bilhwordpress"
#   description = "database name for wordpress"
# }
# variable "wp_mariadb_user" {
#   type        = string
#   sensitive   = true
#   default     = "bilhwordpress"
#   description = "mariadb user for wordpress"
# }
# variable "wp_mariadb_user_pw" {
#   type        = string
#   sensitive   = true
#   default     = "bilhwordpress"
#   description = "password for the mariadb user for wordpress"
# }
# variable "wp_mariadb_root_pw" {
#   type        = string
#   sensitive   = true
#   default     = "bilhwordpress"
#   description = "root password for mariadb"
# }