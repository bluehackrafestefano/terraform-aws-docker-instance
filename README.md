Terraform Module to provision an AWS EC2 instance with the latest ubuntu ami and installed docker in it.

Usage:

```go
provider "aws" {
  region = "us-east-1"
}

module "docker_instance" {
    source = "<github-username>/docker-instance/aws"
    key_name = "task"
}
```