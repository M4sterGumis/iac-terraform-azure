
variable "account_tier" {
  description = "Type of the account tier"
  type        = string
  default     = "Standard"
}


variable "account_replication_type" {
  description = "Type of the replication type"
  type        = string
  default     = "LRS"
}

variable "app_service_plan_name" {
  description = "Name of the app service plan"
  type        = string
  default     = "test-app-service-plan"
}
variable "location" {
  description = "Location of the resources"
  type        = string
  default     = "West Europe"
}

variable "python_version" {
  type        = number
  default     = "3.9"
}

variable "kind" {
  description = "Kind type"
  type        = string
  default     = "Linux"
}

variable "sku_tier" {
  type        = string
  default     = "Standard"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default      = "test-resource-group"
}

variable "function_app_name" {
  description = "Name of the function app"
  type        = string
  default     = "test-linux-function-app"
}

variable "reserved" {
  description = "IS the plan reserved"
  type        = bool
  default     = "true"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "test_storage_account"
}

variable "language" {
  type        = string
  default     = "Python"
}

variable "function_name" {
  description = "Name of the function"
  type        = string
  default     = "test-function"
}

variable "sku_size" {
  type        = string
  default     = "S1"
}

variable "config_json" {
  default = jsonencode({
    "bindings" = [
      {

        "authLevel" = "function"
        "direction" = "in"
        "methods"   = [
          "get",
          "post",
        ]

        "name"      = "req"
        "type"      = "httpTrigger"

      },
      {

        "direction" = "out"
        "name"      = "$return"
        "type"      = "http"

      }
    ]
  })
}


variable "test_data" {
  default = jsonencode({
    "name" = "Azure"
  })
}
