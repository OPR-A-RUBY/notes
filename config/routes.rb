Rails.application.routes.draw do
  
  resources :notes
  resources :labels
  devise_for :users
  root to: 'home#index'  # Стартовая страница обрабатывается контроллером home 
  get 'home/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
