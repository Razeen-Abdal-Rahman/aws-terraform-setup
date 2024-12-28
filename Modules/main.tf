resource "aws_budgets_budget" "max_spend" {
  name        = "100 dollar budget"
  budget_type = "COST"
  time_unit   = "MONTHLY"

  limit_amount = "100"
  limit_unit   = "USD"

  cost_types {
    include_credit              = false
    include_discount            = true
    include_other_subscription  = true
    include_recurring           = true
    include_refund              = false
    include_subscription        = true
    include_support             = true
    include_tax                 = true
    include_upfront             = true
    use_blended                 = false
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    notification_type          = "ACTUAL"
    threshold                  = 85
    threshold_type             = "PERCENTAGE"
    subscriber_email_addresses = [ var.email ]
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    notification_type          = "ACTUAL"
    threshold                  = 100
    threshold_type             = "PERCENTAGE"
    subscriber_email_addresses = [ var.email ]
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    notification_type          = "FORECASTED"
    threshold                  = 100
    threshold_type             = "PERCENTAGE"
    subscriber_email_addresses = [ var.email ]
  }
}