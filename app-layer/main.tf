provider "fly" {
  fly_http_endpoint = "api.machines.dev"
}

#resource "fly_app" "exampleApp" {
#  name = "kandyba-flyiac"
#  org  = "personal"
#}

locals {
  width = ((var.ip_width == 32 || var.ip_width == 128) ? var.ip_width : 32)
}

resource "fly_ip" "exampleIp" {
  app  = "kandyba-flyiac"
  type = lookup(var.ip_widths, local.width)
  #depends_on = [fly_app.exampleApp]
}
