Rails.application.routes.draw do
  resources :reviews
  resources :products do
    resources :reviews
  end
end
