resource "aws_appautoscaling_policy" "this" {
  name               = "${local.stack}-${var.resource_name_suffix}"
  policy_type        = var.policy_type
  resource_id        = var.resource_id
  scalable_dimension = var.scalable_dimension
  service_namespace  = var.service_namespace

  target_tracking_scaling_policy_configuration {
    target_value = var.target_value

    predefined_metric_specification {
      predefined_metric_type = var.predefined_metric_type
    }
  }
}
