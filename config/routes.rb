Rails.application.routes.draw do
  devise_for :users
  get '/' => 'figurines#index'
  get '/figurines' => 'figurines#index'
  get '/figurines/new' => 'figurines#new'
  post '/figurines' => 'figurines#create'
  get '/figurines/:id' => 'figurines#show'
  get '/figurines/:id/buy' => 'figurines#buy' 
  get '/figurines/:id/edit' => 'figurines#edit'
  patch '/figurines/:id' => 'figurines#update'
  delete '/figurines/:id' => 'figurines#destroy'

  get '/images/new' => 'images#new'
  post '/images/create' => 'images#create'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'
end
