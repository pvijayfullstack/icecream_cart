RecipeTodo::Application.routes.draw do
  



  resources :cone_for_cups


  resources :flavors


  resources :extras


  resources :ice_creams


  resources :user_sessions

  match 'login' => "user_sessions#new",      :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout

  resources :users  # give us our some normal resource routes for users
  resource :user, :as => 'account'  # a convenience route

  match 'signup' => 'users#new', :as => :signup

  resources :site
  root :to => 'site#index'

   resources :ice_creams  do
     collection do
       post :selected_items
     end
   end
  
end
