Rails.application.routes.draw do
  resource  :session
  resources :examples

  resources :messages do
    resources :comments
  end

  mount ActionCable.server => '/cable'

  root 'examples#index'
end
