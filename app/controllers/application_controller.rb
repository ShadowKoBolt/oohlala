# frozen_string_literal: true

require 'contact'

class ApplicationController < ActionController::Base
  def contact
    @contact = Contact.new
  end
end
