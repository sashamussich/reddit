Rails.application.routes.draw do
	
  devise_for :users

  resources :links do 
  	member do 
  		put "like", to: :upvote 
  		put "dislike", to: :downvote
  	end
  end

  get 'goto/:link_id', to: 'navigate#goto', as: :goto

  root to: "links#index" 

end
