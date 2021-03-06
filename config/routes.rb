Rails.application.routes.draw do
  
  resources :tags
  post 'tags/selection'

  resources :notes
  resources :labels
  devise_for :users
  root to: 'home#index'  # Стартовая страница обрабатывается контроллером home 
  get 'home/index'
  get 'autor-site' => 'pages#autor_site'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
