resource "azurerm_resource_group" "naya_rg" {
  name     = "naya-rg-pipeline1"
  location = "West Europe"
}

resource "azurerm_storage_account" "naya_stg" {
  name                     = "nayastgpipeline20"
  resource_group_name      = azurerm_resource_group.naya_rg.name
  location                 = azurerm_resource_group.naya_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
