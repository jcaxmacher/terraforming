variable "region" {
  default = "us-east-1"
}

variable "app_name" {
  default = "terraforming"
}

variable "log_stream_prefix" {
  default = "resource-export"
}

variable "task_container" {
  default = "obsoleter/terraforming:latest"
}

variable "task_cpu" {
  default = "256"
}

variable "task_memory" {
  default = "512"
}
