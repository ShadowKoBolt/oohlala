# frozen_string_literal: true

# Handle contact requests
class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.with(contact: @contact).new_message_email.deliver_now
      redirect_to(
        contact_path,
        notice: "You're message has been sent, I'll get back to you as soon as possible"
      )
    else
      render template: 'application/contact'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
