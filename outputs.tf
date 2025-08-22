output "repo_arn" {
  description = "ECR repository ARN"
  value       = aws_ecr_repository.repo.arn
}

output "repo_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.repo.repository_url
}

output "irsa_policy_arn" {
  description = "IAM policy ARN for pod access to the container repository. We're nulling the value if module call doesnt enable irsa."
  value       = var.enable_irsa ? (length(aws_iam_policy.irsa) > 0 ? aws_iam_policy.irsa[0].arn : null) : null
}
