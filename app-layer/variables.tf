variable "ip_widths" {
  description = "Mapping number of bits for IP address to its version"
  type        = map(string)
  default = {
    32  = "v4"
    128 = "v6"
  }
}

variable "ip_width" {
  description = "Number of bits for IP address"
  type        = number
  default     = 31 # mistake simulation
}
