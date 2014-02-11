Herdly::Application.routes.draw do
  resources :tasks
  root 'tasks#index'
  match '/sign_up', to: "pages#sign_up", via: :get
end
