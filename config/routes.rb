Rails.application.routes.draw do

  resources :ages
  resources :flu_shots
  resources :vaccines
  resources :medicines
  resources :milestones
  resources :children
	root 'welcome#index', as: 'welcome'

  get '/auth/facebook/callback' => 'sessions#create'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get '/users/sign_out' => 'sessions#destroy'

  resources :profiles, only: [:show, :index]

end