Rails.application.routes.draw do
  get 'users/index' => 'users#index'
  root 'users/index'
  resources :site_outputs
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
