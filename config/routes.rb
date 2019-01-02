Rails.application.routes.draw do

  root 'sessions#new'

  resources :teams do
    resources :challenges do
      resources :presidents
    end
  end


  resources :users

  get '/join_team' => 'teams#join'
  post '/defeat' => 'challenges#defeat'

  post '/undo_defeat' => 'challenges#undo_defeat'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
