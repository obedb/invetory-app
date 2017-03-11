Rails.application.routes.draw do

 get 'inventories', to: 'inventories#index'
 post 'inventories', to: 'inventories#create'
 get 'inventories/new', to: 'inventories#new'
 get 'inventories/:id/edit', to: 'inventories#edit'
 get 'inventories/:id', to: 'inventories#show'
 patch 'inventories/:id', to: 'inventories#update'
 delete 'inventories/:id', to: 'inventories#destroy'

 get '/home', to: 'welcomes#home'
 get 'about', to: 'welcomes#about'
 
 get '/signup', to: 'users#new'
 post '/users', to: 'users#create'

 get '/login', to: 'sessions#new'
 post '/login', to: 'sessions#create'
 delete '/logout', to: 'session#destroy'



end
    