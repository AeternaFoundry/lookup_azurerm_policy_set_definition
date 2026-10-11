data "azurerm_policy_set_definition" "policy_set_definition_lookup" {
  for_each = var.policy_set_definition_lookup

  display_name          = each.value.display_name
  management_group_name = each.value.management_group_name
  name                  = each.value.name
}

