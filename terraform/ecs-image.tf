resource "aws_ecs_task_definition" "service" {
  family = "service"
  container_definitions = jsonencode([
    {
      name      = "demo"
      image     = "node:14.16"
      cpu       = 10
      memory    = 512
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
  tags = {
    yor_trace = "522dc9a4-4747-48f5-9bdb-7b94b4c5d3bf"
  }
}