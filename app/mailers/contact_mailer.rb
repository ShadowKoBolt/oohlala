# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  def new_message_email
    contact = params[:contact]
    @name = contact.name
    @email = contact.email
    @message = contact.message

    mail to: 'info@oohlalaibiza.com', subject: 'Message received'
  end
end
