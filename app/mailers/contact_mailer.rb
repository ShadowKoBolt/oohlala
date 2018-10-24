# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  def new_message_email
    contact = params[:contact]
    @name = contact.name
    @email = contact.email
    @message = contact.message

    mail to: 'to@example.org', subject: 'Message received'
  end
end
