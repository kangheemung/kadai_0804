Rails.application.routes.draw do
 
  #top
  get '/'=>'posts#index'
  get 'posts/edit'=>'posts#edit'
  get 'posts/show'=>'posts#show'
  post 'posts/create'=>'posts#create'
   #login
  #singup
   get 'login' => 'sessions#new'
   post 'sessions/create' => 'sessions#create'
   delete 'logout'=>'sessions#destroy'
  
  #singup
  
  get 'singup' => 'users#new'
  post 'users/create'=>'users#create'
 
 post 'likes/create'=>'likes#create'

 delete 'unlike'=>'likes#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
