# frozen_string_literal: true

Rails.application.routes.draw do
  root 'application#index'
  get 'services' => 'application#services'
  get 'gallery' => 'application#gallery'
  get 'blog' => 'application#blog'
  get 'contact' => 'application#contact'

  get 'blog/easy-summer-beach-hair-tutorial' => 'application#blog_1', as: 'blog_1'
  get 'blog/my-recommendations-for-your-ibiza-holiday' => 'application#blog_2', as: 'blog_2'
  get 'blog/choosing-your-perfect-wedding-hairstyle' => 'application#blog_3', as: 'blog_3'
  get 'blog/top-five-things-to-do-in-ibiza-out-of-season' => 'application#blog_4', as: 'blog_4'

  resource :contacts, only: [:create]
end
