output "cluster_arn" {
    value = aws_ecs_cluster.aws-ecs-cluster.arn
    description = "ARN that identifies the cluster"
  
}

output "cluster_id" {
    value = aws_ecs_cluster.aws-ecs-cluster.id
    description = "ID that identifies the cluster"
  
}