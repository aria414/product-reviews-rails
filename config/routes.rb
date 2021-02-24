Rails.application.routes.draw do

  #Tell the router that for Products we only want index and show, and leave out the others:
  resources :products, only: [:index, :show] do
    resources :reviews, except: [:show]
  end
end
