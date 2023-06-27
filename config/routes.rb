Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/cards" => "cards#index"
  post "/cards" => "cards#create"
  delete "/cards/:id" => "cards#destroy"
  patch "/cards/:id" => "cards#update"
end
