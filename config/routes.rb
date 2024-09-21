Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :test do
  post '/test', to: 'test#index'
  get '/test', to: 'test#index'
  # end
  # Defines the root path route ("/")
  # root "articles#index"
end
