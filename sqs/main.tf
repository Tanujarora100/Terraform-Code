provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}
resource "aws_sqs_queue" "terraform_queue" {
  name                        = "my-queue-fifo.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
}

#Creating a standard queue
resource "aws_sqs_queue" "terraform_queue_standard" {
  name                        = "standard_queue"
  fifo_queue                  = false
  
}