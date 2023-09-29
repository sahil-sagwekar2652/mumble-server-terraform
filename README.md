# Mumble server Terraform

[![My Skills](https://skillicons.dev/icons?i=aws&perline=4)](https://skillicons.dev)

Use terraform to create a setup a Mumble server on an `t2.micro` EC2 instance (free tier eligible as of Sept 2023)

### Requirements

- Make sure to change the super user password in the line 7 of `setup.sh` file

- You need to have `id_rsa` and `id_rsa.pub` key files inside your `~/.ssh` directory. If not you can modify the code inside `key-pair.tf` and line 11 in `mumble-server.tf`
