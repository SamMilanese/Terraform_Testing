provider "azurerm" {
    version = "<=3.25.0"
    subscription_id = var.subscriptionID
    tenant_id = var.tenantID

    features {}
}

resource "azurerm_resource_group" "DevRG" {
  name     = var.resourceGroupName
  location = var.location

  tags = {
    environment = "Dev"
  }
}
