Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/terms-of-use' => 'pages#terms'
  get '/privacy-policy' => 'pages#policy'
end
