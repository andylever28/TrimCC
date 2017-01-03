Rails.application.routes.draw do
  get 'apprentices/new'

  get 'apprentices/create'

  root 'apprentices#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
