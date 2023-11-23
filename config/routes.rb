Rails.application.routes.draw do
  root 'home#index', :as => :home
  get 'about' => 'home#about'
  resources :friends
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
