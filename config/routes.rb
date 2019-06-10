Rails.application.routes.draw do
  root 'profile#show'
  get '/profile' => 'profile#show', as: :profile_path

  resources :users, only: %i(update)
end
