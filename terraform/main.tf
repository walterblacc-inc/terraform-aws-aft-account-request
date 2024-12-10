module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "me+walterblacc-aws-sandbox@walterblacc.com"
    AccountName               = "walterblacc-sandbox"
    ManagedOrganizationalUnit = "walterblacc-account-factory"
    SSOUserEmail              = "me+walterblacc-aws-account-factory@walterblacc.com"
    SSOUserFirstName          = "Walter"
    SSOUserLastName           = "Blacc"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "walterblacc-sandbox"
}
