Rails.application.routes.draw do

	root 'welcome#index', as: 'welcome'

  get '/auth/facebook/callback' => 'sessions#create'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get '/users/sign_out' => 'sessions#destroy'

end