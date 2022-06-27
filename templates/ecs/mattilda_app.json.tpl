[
  {
    "name": "mattilda-app",
    "image": "${app_image}",
    "cpu": ${fargate_cpu},
    "memory": ${fargate_memory},
    "networkMode": "awsvpc",
    "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/mattilda-app",
          "awslogs-region": "${aws_region}",
          "awslogs-stream-prefix": "ecs"
        }
    },
    "environment": [
      {
        "name": "POSTGRES_USER",
        "value": "postgres"
      },
      {
        "name": "POSTGRES_PASSWORD",
        "value": "postgres"
      },
      {
        "name": "POSTGRES_SERVER",
        "value": "dev-db.cwyxu4m44txn.us-east-1.rds.amazonaws.com"
      },
      {
        "name": "POSTGRES_PORT",
        "value": "5432"
      },
      {
        "name": "POSTGRES_DB",
        "value": "api_db"
      }      
    ],
    "portMappings": [
      {
        "containerPort": ${app_port},
        "hostPort": ${app_port}
      }
    ]
  }
]