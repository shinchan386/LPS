Rails.application.routes.draw do
  devise_for :users
    root 'tweets#index'
    get 'tweets' => 'tweets#index'
    get 'tweets/new' => 'tweets#new'
    post 'tweets' => 'tweets#create'
    get 'tweets/:id/edit' => 'tweets#edit'
    delete 'tweets/:id' => 'tweets#destroy'
    patch 'tweets/:id/' => 'tweets#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
