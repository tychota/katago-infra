terraform {
  backend "gcs" {
    bucket = "katago-tf"
    prefix = "terraform-project"
  }
}