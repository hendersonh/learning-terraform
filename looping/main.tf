
module "webserver_cluster" {
  source        = "./webserver_cluster"
  cluster_name  = "webservers-prod"
  organization  = "hendy"
  workspace     = "webserver"
  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 10
  custom_tags = { //tags will be dynamically inserted in the ASG resource in the moduel
    Owner       = "HendyLabTech"
    ManagedBy   = "Hendy_Amins"
    environment = "prod"
  }
}
