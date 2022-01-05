module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "driscoll.davidj+ttekstest@gmail.com"
    AccountName               = "ekstest"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "driscoll.davidj+ttaft@gmail.com"
    SSOUserFirstName          = "EKS"
    SSOUserLastName           = "TEST"
  }

  account_tags = {
    "Learn Tutorial" = "AFT - Test EKS "
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "ekstest"
}
