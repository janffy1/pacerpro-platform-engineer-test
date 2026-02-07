# Terraform outputs for PacerPro demo

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web_app.id  # placeholder
}

output "sns_topic_arn" {
  description = "SNS topic ARN"
  value       = aws_sns_topic.alert_topic.arn  # placeholder
}

output "lambda_function_name" {
  description = "Lambda function name"
  value       = aws_lambda_function.self_healing.function_name  # placeholder
}
