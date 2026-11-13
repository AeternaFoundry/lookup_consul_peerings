output "peerings_lookup_id" {
  description = "Map of id values across all peerings_lookup, keyed the same as var.peerings_lookup"
  value       = { for k, v in data.consul_peerings.peerings_lookup : k => v.id }
}
output "peerings_lookup_partition" {
  description = "Map of partition values across all peerings_lookup, keyed the same as var.peerings_lookup"
  value       = { for k, v in data.consul_peerings.peerings_lookup : k => v.partition }
}
output "peerings_lookup_peers" {
  description = "Map of peers values across all peerings_lookup, keyed the same as var.peerings_lookup"
  value       = { for k, v in data.consul_peerings.peerings_lookup : k => v.peers }
}

