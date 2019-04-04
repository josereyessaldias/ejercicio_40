Rails.application.routes.draw do
  get 'pages/index'
  post 'activity/:user_id', to: 'pages#create_activity', as: 'asigne_activity'

  devise_for :users, controllers: {
        registrations: 'user/registrations'
      }

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
