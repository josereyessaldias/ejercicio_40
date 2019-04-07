Rails.application.routes.draw do
  get 'pages/index'
  post 'activity/:user_id', to: 'pages#create_activity', as: 'asigne_activity'
  get 'edit/:user_id/:activity_id', to: 'pages#edit_activity', as: 'edit_activity'
  patch 'edit/:user_id/:activity_id', to: 'pages#update_activity', as: 'update_activity'
  delete 'activity/:user_id/:activity_id', to: 'pages#delete_activity', as: 'delete_activity'

  get 'user_page/:user_id', to: 'pages#user_page', as: 'user_page'

  devise_for :users, controllers: {
        registrations: 'user/registrations'
      }

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
