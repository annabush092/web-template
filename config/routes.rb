Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'foods#index'

  resources :foods, only: [:index, :new, :create]
  resources :meals, only: [:index, :new, :create, :edit, :update]
end
