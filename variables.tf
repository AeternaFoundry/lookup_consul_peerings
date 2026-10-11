variable "peerings_lookup" {
  description = <<EOT
Map of peerings_lookup, attributes below
Optional:
    - partition
EOT

  type = map(object({
    partition = optional(string)
  }))
}

