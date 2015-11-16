Rails.application.routes.draw do
	
  devise_for :users
  resources :links

  get 'goto/:link_id', to: 'navigate#goto', as: :goto

  root to: "links#index" 

end
