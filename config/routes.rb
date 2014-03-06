Miniblog::Application.routes.draw do
  resources :users, only: [:new, :create]
  resources :articles, only: [:index, :show] do
   resources :comments
end

root 'articles#index'

get '/login'=> 'session#new'

post '/login' =>'session#create'

get '/logout' => 'session#logout'

get '/user_new' => 'users#new'


end