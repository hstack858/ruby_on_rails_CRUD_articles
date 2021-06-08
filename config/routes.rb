Rails.application.routes.draw do
  resources :articles
  root 'pages#home'

  get 'about' => 'pages#about'

  get 'articles' => 'articles#index'
end
