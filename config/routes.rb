Rails.application.routes.draw do
  resources :articles
  root 'pages#home'

  get 'about' => 'pages#about'

  get 'articles' => 'articles#index'

  get 'signup' => 'users#new'
  resources :users, except: [:new]
end
