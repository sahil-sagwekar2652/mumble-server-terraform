resource "aws_key_pair" "my_key" {
  key_name   = "mumble-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
