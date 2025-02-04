Rails.application.routes.draw do
  devise_for :users
  resources :friends
  # get 'home/index'

  # Custom static route for destroying session/signout (using GET method)
  devise_scope :user do
    get 'users/sign_out', to: 'devise/sessions#destroy' # Custom logout route with GET method
  end

  root 'home#index'
  get 'home/about'

  get 'friends/:id/destroy', to: 'friends#destroy', as: 'destroy_friend'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
