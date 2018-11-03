# frozen_string_literal: true

# Handles emails for the contact form
class ContactMailer < ApplicationMailer
  def new_message_email
    contact = params[:contact]
    @name = contact.name
    @email = contact.email
    @message = contact.message

    mail(to: ENV['CONTACT_FORM_RECIPIENT'], subject: 'Message received')
  end
end
