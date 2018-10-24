# frozen_string_literal: true

# Represents a contact on contact form
class Contact
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :name, :email, :message

  validates :name, :email, :message, presence: true
end
