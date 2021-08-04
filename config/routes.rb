Rails.application.routes.draw do
  resources :articles
  root 'pages#home'

  get 'about' => 'pages#about'

  get 'articles' => 'articles#index'

  get 'signup' => 'users#new'
  resources :users, except: [:new]

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
