locals {
  encoding = "utf8mb4"
}

resource "aws_db_parameter_group" "db-pg" {
  name = "db-pg"
  family = "mysql5.7"

  parameter {
    name = "character_set_client"
    value = local.encoding
  }

  parameter {
    name = "character_set_connection"
    value = local.encoding
  }

  parameter {
    name = "character_set_database"
    value = local.encoding
  }

  parameter {
    name = "character_set_results"
    value = local.encoding
  }

  parameter {
    name = "character_set_server"
    value = local.encoding
  }

  parameter {
    name = "skip-character-set-client-handshake"
    value = "1"
    apply_method = "pending-reboot"
  }
}
