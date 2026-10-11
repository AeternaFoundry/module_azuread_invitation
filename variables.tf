variable "invitations" {
  description = <<EOT
Map of invitations, attributes below
Required:
    - redirect_url
    - user_email_address
Optional:
    - user_display_name
    - user_type
    - message (block):
        - additional_recipients (optional)
        - body (optional)
        - language (optional)
EOT

  type = map(object({
    redirect_url       = string
    user_email_address = string
    user_display_name  = optional(string)
    user_type          = optional(string)
    message = optional(object({
      additional_recipients = optional(list(string))
      body                  = optional(string)
      language              = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.invitations : (
        v.user_display_name == null || (length(v.user_display_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.invitations : (
        v.message == null || (v.message.additional_recipients == null || (alltrue([for x in v.message.additional_recipients : length(x) > 0])))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.invitations : (
        v.message == null || (v.message.body == null || (length(v.message.body) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

