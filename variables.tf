variable "project_name" {
  type = string
}

variable "env_name" {
  type = string
}

variable "root_domain" {
  type = string
}

variable "enable_expensive" {
  type    = bool
  default = true
}

variable "allowed_ips" {
  type    = list(string)
  default = ["0.0.0.0/32"]
}
