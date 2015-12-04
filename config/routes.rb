Rails.application.routes.draw do
  devise_for :users
  get '/' => 'figurines#index'
  get '/figurines' => 'figurines#index'
  get '/figurines/new' => 'figurines#new'
  post '/figurines' => 'figurines#create'
  get '/figurines/:id/edit' => 'figurines#edit'
  get '/figurines/:id' => 'figurines#show'
  patch '/figurines/:id' => 'figurines#update'
  delete '/figurines/:id' => 'figurines#destroy'

  get '/images/new' => 'images#new'
  post '/images/create' => 'images#create'

  post '/orders/create' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  get '/categories/:category' => 'categories#show'

  get '/cart' => 'carted_figurines#index'
  post '/cart' => 'carted_figurines#create'
  delete '/cart/:id' => 'carted_figurines#destroy'
end
