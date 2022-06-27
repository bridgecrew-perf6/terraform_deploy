# variables.tf

variable "aws_region" {
  description = "Default AWS region"
  default     = "us-east-1"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default     = "mattildaEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default     = "mattildaEcsAutoScaleRole"
}

variable "az_count" {
  description = "AZs to cover in a given region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "547490258525.dkr.ecr.us-east-1.amazonaws.com/mcarello_repo"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8000
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 1
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}