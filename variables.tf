variable "project_name" {
  type = string
}

variable "env_name" {
  type        = string
  description = "This is the name of the environment where the ECR repos will live (e.g. `build`)"
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

variable "env_account_ids" {
  type = map(string)
}

variable "service_repos" {
  type = map(object({
    service_envs = list(string),
    service_name = string,
  }))

  default = {}
}
