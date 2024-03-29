variable cloud_id {
  description = "cloud"
}
variable folder_id {
  description = "folder"
}
variable zone {
  description = "zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable private_key_path {
  description = "Private key file"
}
variable image_id {
  description = "Disk image"
}
variable subnet_id {
  description = "subnet"
}
variable service_account_key_file {
  description = "key .json"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

