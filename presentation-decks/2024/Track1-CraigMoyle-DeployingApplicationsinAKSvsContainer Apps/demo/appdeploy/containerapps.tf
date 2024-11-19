provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "capps-tf-rg" {
  name     = "capps-tf-demo-rg"
  location = "Australia East"
}

resource "azurerm_log_analytics_workspace" "capps-tf-law" {
  name                = "capps-tf-demo-law"
  location            = azurerm_resource_group.capps-tf-rg.location
  resource_group_name = azurerm_resource_group.capps-tf-rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_container_app_environment" "capps-tf-env" {
  name                       = "capps-tf-demo-env"
  location                   = azurerm_resource_group.capps-tf-rg.location
  resource_group_name        = azurerm_resource_group.capps-tf-rg.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.capps-tf-law.id
}
resource "azurerm_container_app" "capps-tf-app" {
  name                         = "capps-tf-demo-app"
  container_app_environment_id = azurerm_container_app_environment.capps-tf-env.id
  resource_group_name          = azurerm_resource_group.capps-tf-rg.name
  revision_mode                = "Single"
  ingress {
    allow_insecure_connections = true
    target_port                = 80
    traffic_weight {
      percentage      = 100
      latest_revision = true
    }
    external_enabled = true
  }
  template {
    container {
      name   = "democontainerapp"
      image  = "mcr.microsoft.com/k8se/quickstart:latest"
      cpu    = 0.25
      memory = "0.5Gi"
    }
  }
}
