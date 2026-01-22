variable "my_map" {
    type = map
}

output "variable_value" {
    value = var.my_map
}