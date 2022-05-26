Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :users
  
  resources :collections do
    resource :favorites, only: [:create, :destroy]
  end
  
  get "home/terms" => "home#terms"
  get "home/contact" => "home#contact"
end
