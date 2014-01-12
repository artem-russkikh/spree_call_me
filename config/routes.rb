Spree::Core::Engine.routes.draw do

  resources :callback, controller: :call_backs, only: [:new, :create] do
  	get 'notice'
  end
  namespace :admin do
    resources :callback, controller: :callbacks
  end
  # Add your extension routes here
end
