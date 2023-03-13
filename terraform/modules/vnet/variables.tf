variable region_prefix {
type        = string
}
variable ordinal_prefix {
type        = string
}
variable subscription_prefix {
type        = string
}
variable vnet_name {
type        = string
}
variable resource_group_name {
type        = string
}
variable location {
type        = string
}
variable address_space {
type        = list(string)
}
variable subnet_prefix {
  type = list
}
variable ddos {
type        = string
}
variable policy_name_prefix {
type        = string
}
variable inbound_rules {
  type        = list(map(string))
  default     = []
  description = "List of objects that represent the configuration of each inbound rule."
}
variable outbound_rules {
  type        = list(map(string))
  default     = []
  description = "List of objects that represent the configuration of each outbound rule."
}