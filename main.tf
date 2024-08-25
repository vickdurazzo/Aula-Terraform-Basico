# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.0.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "01154055-38cb-4001-90ea-3bc80a1493b4"
}

/*definição de recurso na nuvem*/

#definicao grupo de recurso na azure
resource "azurerm_resource_group" "rg_live_vick" {
  name     = "rg-live-vick"
  location = "East US"
}

#definicao service plan
resource "azurerm_service_plan" "service_plan_live_vick" {
  name                = "live-service-plan-vick"
  resource_group_name = azurerm_resource_group.rg_live_vick.name
  location            = azurerm_resource_group.rg_live_vick.location
  os_type             = "Linux"
  sku_name            = "F1"
}

#definicao serviço de aplicativo
resource "azurerm_linux_web_app" "web_app" {
  name                = var.web_app_name
  resource_group_name = azurerm_resource_group.rg_live_vick.name
  location            = azurerm_service_plan.service_plan_live_vick.location
  service_plan_id     = azurerm_service_plan.service_plan_live_vick.id
 
 site_config {
   always_on = false

   application_stack {
     docker_image_name = "fabricioveronez/nginx-live:v1"
   }
 }

}

variable "web_app_name" {
    type = string
    description = "Nome do meu web app"
    default = "live-web-app-vick"
}

output "name" {
  value = "https://${azurerm_linux_web_app.web_app.name}.azurewebsites.net"
}