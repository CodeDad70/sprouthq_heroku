Rails.application.routes.draw do

  resources :children do
    # nested resource for cards
   	resources :cards, only:[:show, :new, :create, :edit]
  end

  resources :cards, only:[:index]

 
	root 'welcome#index', as: 'welcome'

  get '/auth/facebook/callback' => 'sessions#create'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get '/users/sign_out' => 'sessions#destroy'


end