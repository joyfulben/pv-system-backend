Rails.application.routes.draw do
  root 'postgres://xublevljvumfzm:1dec1cb0e42feedbdbe6938c37cd205a576f5193a173a89976ce1f8fdea9ab3b@ec2-50-17-178-87.compute-1.amazonaws.com:5432/d8igek20jhj3i'
  resources :site_outputs
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
