Rails.application.routes.draw do
  root to: 'products#index'

  get '/products/showall', to: 'products#showall', as: 'products_showall'

  resources :products do
    resources :reviews
  end

end
