Rails.application.routes.draw do
  get 'skills/create'
  root 'users#index'
  resources :users do
    resources :skills
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
