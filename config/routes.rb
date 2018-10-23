# frozen_string_literal: true

Rails.application.routes.draw do
  root 'application#index'
  get 'services' => 'application#services'
  get 'gallery' => 'application#gallery'
  get 'blog' => 'application#blog'
  get 'contact' => 'application#contact'
end
