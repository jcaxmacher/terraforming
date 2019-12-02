output "run_command" {
  value = "aws ecs run-task --cluster ${aws_ecs_cluster.default.arn} --count 1 --launch-type FARGATE --network-configuration awsvpcConfiguration={subnets=[${tolist(data.aws_subnet_ids.default.ids)[0]}],securityGroups=[${aws_security_group.default.id}],assignPublicIp=ENABLED} --task-definition ${aws_ecs_task_definition.default.arn}"
}

output "tail_command" {
  value = "cw tail -f ${var.app_name}:${var.log_stream_prefix}"
}
