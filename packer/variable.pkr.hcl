variable "project_name" {
  default     = "shopping_app"
}

variable "project_env" {
  default     = "prod"
}

variable "instance_type" {
  default     = "t2.micro"
}

locals {
  image-timestamp = "${formatdate("DD-MM-YY-hh-mm", timestamp())}"
  image-name      = "${var.project_name}-${var.project_env}-${local.image-timestamp}"
}

variable "ami_id" {
  default     = "ami-0a0f1259dd1c90938"
}
