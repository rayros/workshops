Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :categories do
    resources :products do
      resources :reviews
    end
  end
  get '/profile/:id', to: 'profile#show', as: :profile
  root 'categories#index'
end
