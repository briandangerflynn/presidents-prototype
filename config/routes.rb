Rails.application.routes.draw do

  root 'sessions#new'

  resources :teams do
    resources :challenges do
      resources :presidents
    end
  end


  resources :users

  get '/join_team' => 'teams#join'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
