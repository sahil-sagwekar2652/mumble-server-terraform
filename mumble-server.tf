resource "aws_instance" "mumble" {
  ami             = "ami-03f65b8614a860c29"
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.sg.name]

  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
  }

  provisioner "remote-exec" {
    script = "./setup.sh"
  }
}
