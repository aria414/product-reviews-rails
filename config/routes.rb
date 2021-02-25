Rails.application.routes.draw do

  #Tell the router that for Products we only want index and show, and leave out the others:
  resources :products, only: [:index, :show] do
    #Can do index and create... forget the rest. http://localhost:3000/products/1/reviews
    resources :reviews, except: [:show, :update, :destroy]
  end

  resources :reviews, only: [:update, :destroy]
end
