# Outputs EC2 Instances
output "wordpress_instance_public_ip" {
  value = aws_instance.wordpress_instance.public_ip
}
output "ec2_ami_id" {
  value = aws_instance.wordpress_instance.ami
}
output "key_name" {
  value = aws_key_pair.bilh_demo_key_pair.key_name
}
output "security_group_id" {
  value = aws_security_group.wordpress.id
}
output "web_subnet_id" {
  value = aws_subnet.web.id
}
output "aws_cli_command_create_ec2_instance" {
  value = "aws ec2 run-instances --image-id ${aws_instance.wordpress_instance.ami} --count 1 --instance-type t2.micro --key-name ${aws_key_pair.bilh_demo_key_pair.key_name} --security-group-ids ${aws_security_group.wordpress.id} --subnet-id ${aws_subnet.web.id} --no-associate-public-ip-address"
}