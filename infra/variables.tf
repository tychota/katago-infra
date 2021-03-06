# GCP variables

variable "region" {
  default     = "europe-west4"
  description = "Region of resources"
}

variable "bucket_name" {
  description = "Name of the google storage bucket"
}

variable "name" {
  default = {
    prod = "prod"
    dev  = "dev"
  }

  description = "Name for vpc"
}

# Network variables

variable "subnet_ip_cidr" {
  default     = "10.0.0.0/16"
  description = "Subnet range"
}

variable "subnet_pods_cidr" {
  default     = "10.1.0.0/16"
  description = "Subnet range"
}

variable "subnet_services_cidr" {
  default     = "10.2.0.0/16"
  description = "Subnet range"
}

# Cloud SQL variables

variable "availability_type" {
  default = {
    prod = "REGIONAL"
    dev  = "ZONAL"
  }

  description = "Availability type for HA"
}

variable "sql_instance_size" {
  default = {
    prod = "db-g1-small"
    dev  = "db-f1-micro"
  }
  description = "Size of Cloud SQL instances"
}

variable "sql_disk_type" {
  default     = "PD_SSD"
  description = "Cloud SQL instance disk type"
}

variable "sql_disk_size" {
  default     = "40"
  description = "Storage size in GB"
}

variable "sql_master_zone" {
  default     = "a"
  description = "Zone of the Cloud SQL master (a, b, ...)"
}

variable "sql_replica_zone" {
  default     = "b"
  description = "Zone of the Cloud SQL replica (a, b, ...)"
}

variable "sql_connect_retry_interval" {
  default     = 60
  description = "The number of seconds between connect retries."
}

variable "sql_user" {
  default     = "katago"
  description = "Username of the host to access the database"
}

variable "sql_pass" {
  description = "Password of the host to access the database"
}

# GKE variables

variable "min_master_version" {
  default     = "1.17.5-gke.9"
  description = "Number of nodes in each GKE cluster zone"
}

variable "node_version" {
  default     = "1.17.5-gke.9"
  description = "Number of nodes in each GKE cluster zone"
}

variable "gke_num_nodes" {
  default = {
    prod = 2
    dev  = 1
  }

  description = "Number of nodes in each GKE cluster zone"
}

variable "gke_node_machine_type" {
  default = {
    prod = "n2-standard-2"
    dev  = "n1-standard-1"
  }
  description = "Machine type of GKE nodes"
}

variable gke_label {
  default = {
    prod = "prod"
    dev  = "dev"
  }

  description = "label"
}
