Rails.application.routes.draw do
  root 'profile#show'
  get '/profile' => 'profile#show'
end
