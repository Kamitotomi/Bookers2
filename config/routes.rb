Rails.application.routes.draw do


  root 'home#top'

  
  devise_for :users
  

  resources :books do
  	resources :book_comments, only: [:create, :destroy]
  end
  

  resources :users, only: [:index, :show, :edit, :update]
  
  get 'home/about' => 'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
