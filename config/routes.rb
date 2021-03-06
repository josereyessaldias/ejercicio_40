Rails.application.routes.draw do
  get 'pages/index'
  get 'user_page/:user_id', to: 'pages#user_page', as: 'user_page'

  post 'activity/:user_id', to: 'user_activities#create', as: 'asigne_activity'
  get 'edit/:user_id/:activity_id', to: 'user_activities#edit', as: 'edit_activity'
  delete 'activity/:user_id/:activity_id', to: 'user_activities#destroy', as: 'destroy_activity'
  patch 'edit/:user_id/:activity_id', to: 'user_activities#update', as: 'update_activity'

  
  

  devise_for :users, controllers: {
        registrations: 'user/registrations'
      }

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
