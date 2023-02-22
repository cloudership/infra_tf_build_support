module "service_ecr" {
  source = "terraform-aws-modules/ecr/aws"

  for_each = var.service_repos

  repository_name               = "service-${each.value.service_name}"
  repository_image_scan_on_push = false

  repository_read_access_arns = formatlist(
    "arn:aws:iam::%s:role/service-%s",
    [for n in each.value.service_envs : var.env_account_ids[n]],
    each.value.service_name,
  )

  tags = merge(local.tags, { Service = each.value.service_name })
}
