output "invitations_id" {
  description = "Map of id values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.id }
}
output "invitations_message" {
  description = "Map of message values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => one(v.message) }
}
output "invitations_redeem_url" {
  description = "Map of redeem_url values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.redeem_url }
}
output "invitations_redirect_url" {
  description = "Map of redirect_url values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.redirect_url }
}
output "invitations_user_display_name" {
  description = "Map of user_display_name values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.user_display_name }
}
output "invitations_user_email_address" {
  description = "Map of user_email_address values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.user_email_address }
}
output "invitations_user_id" {
  description = "Map of user_id values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.user_id }
}
output "invitations_user_type" {
  description = "Map of user_type values across all invitations, keyed the same as var.invitations"
  value       = { for k, v in azuread_invitation.invitations : k => v.user_type }
}

