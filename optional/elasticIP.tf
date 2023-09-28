resource "aws_eip" "ip" {
  instance = aws_instance.web.id
  domain   = "false"
}
