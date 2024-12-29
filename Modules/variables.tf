variable "profile" {
  type = string
  description = "name of the profile configured in aws cli that will allow terrafrom to authenticate using its aws provider"
}

variable "email" {
  type = string
  description = "email address for budget notifications"
}