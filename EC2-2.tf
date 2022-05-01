provider "aws" {
  region     = "us-east-1"
}  

resource "aws_instance" "my-web" {
  count = 2
  ami           = "ami-09d56f8956ab235b3"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0527b2ae4674aae33"
  security_groups = ["sg-0323f191c892ffcf1"]
  key_name      = aws_key_pair.key.id

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_key_pair" "key" {
  key_name   = "ec2-2"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDFjDQaLcUYBJ6VFUlcp6Qtv1yavw5+jiOTdW5/iTmBgCXwH5j4b/VnD3NgfdtLlKT92HUkCakLJAABzd13gCe3ztsuIn5r3GDbCbNpCzpmL35WBHWXOuVonBK8kNGRq47e6KFBha7BI7YNakUTjdUSpCflrw6UibY89xpyQmKbIIhnXFb9a5RRYtK7WN3QiUItKXJ8lIgTH3OD6sALa6AeFOvqk6ukwvO4KzSmsNbasgbi94Hk3kuF+JFzJ3HRo8EoOb/1o/CfzhF5+bQiBDGfvj+9f+PJ+EPFCiHoiIx+Vuk7QybM0CwXvSdRicYorsp571Qqd8Go2aiDdfTO5TXBGZSX/zK7LsRICsl1iRaTpyRD32OC/gk2Rn5IHCkmaqwmRToJdWPHl3CSxChPpRXb5Kt4pwq9VY8rrvsJtUUOqmw95B1XR58E72kwkk8FyRZvr3HEMhfwVv6Ed7MkwcaXs8shEwuL3oPjJsbybQRqOJpJAHHvK8DS71iJj2LRaos= jyothsna@jyothsna-PC"
}