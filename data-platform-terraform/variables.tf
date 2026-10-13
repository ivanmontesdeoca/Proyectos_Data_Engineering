
variable "region" {
  description = "Region de AWS para desplegar recursos"
  type        = string
}

variable "project_name" {
  description = "Nombre de la plataforma de datos"
  type        = string
}

variable "environment" {
  description = "Entorno de despliegue"
  type        = string

  validation {
    condition = contains(
      ["dev", "staging", "prod"],
      var.environment
    )
    error_message = "El entorno debe ser dev, staging o prod."
  }
}
