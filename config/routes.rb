Rails.application.routes.draw do
  root 'profile#show'
  get '/profile' => 'profile#show', as: :profile_path

  resources :users, only: %i(update)
  resources :auction_items, only: %i(index show) do
    member do
      post :bid
    end
  end
end
