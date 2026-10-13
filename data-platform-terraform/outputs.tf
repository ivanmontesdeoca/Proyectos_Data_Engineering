
output "project_identifier" {
  description = "Identificador del proyecto y entorno"
  value       = "${var.project_name}-${var.environment}"
}
