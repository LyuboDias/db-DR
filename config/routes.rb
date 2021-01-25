Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lesson, :path => "courses", only: [:index, :show, :new, :create]
  resources :allergie, only: [:index, :show, :new, :create]
  resources :general_paediatric, only: [:index, :show, :new, :create]
  resources :respiratory_paediatric, only: [:index, :show, :new, :create]
  get '/terms-of-use' => 'pages#terms'
  get '/privacy-policy' => 'pages#policy'
  get '/contacts' => 'pages#contacts'
  get '/about' => 'pages#about' 
  get '/covid19' => 'pages#covid-19'
  get '/links' => 'pages#links'
end
