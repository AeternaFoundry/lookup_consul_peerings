output "peerings_lookup_id" {
  description = "Map of id values across all peerings_lookup, keyed the same as var.peerings_lookup except keys with no id are omitted"
  value       = { for k, v in data.consul_peerings.peerings_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "peerings_lookup_partition" {
  description = "Map of partition values across all peerings_lookup, keyed the same as var.peerings_lookup except keys with no partition are omitted"
  value       = { for k, v in data.consul_peerings.peerings_lookup : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "peerings_lookup_peers" {
  description = "Map of peers values across all peerings_lookup, keyed the same as var.peerings_lookup except keys with no peers are omitted"
  value       = { for k, v in data.consul_peerings.peerings_lookup : k => v.peers if v.peers != null && length(v.peers) > 0 }
}

