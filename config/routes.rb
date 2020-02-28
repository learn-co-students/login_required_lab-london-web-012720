Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:new, :create]
  get '/secret' => 'secrets#show'
  get "/logout", to: "sessions#destroy"
end
