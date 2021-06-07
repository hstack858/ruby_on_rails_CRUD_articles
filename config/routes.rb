Rails.application.routes.draw do
  resources :articles, only: [:show]
  root 'pages#home'

  get 'about' => 'pages#about'

end
