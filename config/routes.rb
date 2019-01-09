Rails.application.routes.draw do
  root 'static_pages#index'

  resources :payments
  resources :applications do
    resources :lodgings
    resources :workshops
  end

  devise_for :users

  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/privacy', to: 'static_pages#privacy'
  get '/terms_of_service', to: 'static_pages#terms_of_use'


  get 'payment_receipt', to: 'payments#payment_receipt'
  get 'make_payment', to: 'payments#make_payment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
