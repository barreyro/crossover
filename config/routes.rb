Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#index'

  resources :friends
  get '/search', to: 'friends#search'
  get '/requests', to: 'friends#requests'
  get '/truefriends', to: 'friends#truefriends'
  post '/login', to: 'pages#login'
  get '/login', to: 'pages#login_box'
  get '/register', to: 'pages#register'
  post '/register', to: 'pages#new_register'
  get '/logout', to: 'pages#logout'
  put '/profile', to: 'pages#profile'
  post '/friends/:id/addvalue', to: 'values#add'
  get '/friends/:id/values', to: 'values#show'
  patch '/friends/:id/add_back', to: 'friends#add_back'

end
