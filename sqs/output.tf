output "sqs-fifo-arn" {
  value= aws_sqs_queue.terraform_queue.arn
}
output "standard-sqs-arn" {
  value = aws_sqs_queue.terraform_queue_standard.arn
}