output "invitations_id" {
  description = "Map of id values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "invitations_message" {
  description = "Map of message values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => one(v.message) if v.message != null && length(v.message) > 0 }
}
output "invitations_redeem_url" {
  description = "Map of redeem_url values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.redeem_url if v.redeem_url != null && length(v.redeem_url) > 0 }
}
output "invitations_redirect_url" {
  description = "Map of redirect_url values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.redirect_url if v.redirect_url != null && length(v.redirect_url) > 0 }
}
output "invitations_user_display_name" {
  description = "Map of user_display_name values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.user_display_name if v.user_display_name != null && length(v.user_display_name) > 0 }
}
output "invitations_user_email_address" {
  description = "Map of user_email_address values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.user_email_address if v.user_email_address != null && length(v.user_email_address) > 0 }
}
output "invitations_user_id" {
  description = "Map of user_id values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}
output "invitations_user_type" {
  description = "Map of user_type values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.user_type if v.user_type != null && length(v.user_type) > 0 }
}

