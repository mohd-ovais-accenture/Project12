terraform {
  required_version = ">= 1.5.0"
}

locals {
  project_name  = "project-12-ci-terraform-plan"
  blocked_ports = [22, 3389]
}

resource "null_resource" "ci_plan_target" {
  triggers = {
    project = local.project_name
    policy  = "restricted-ports-disabled"
  }
}
