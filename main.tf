data "consul_peerings" "peerings_lookup" {
  for_each = var.peerings_lookup

  partition = each.value.partition
}

