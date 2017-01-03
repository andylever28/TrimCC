Rails.application.routes.draw do
  resources :apprentices
  get 'home/landing'

  root 'home#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
