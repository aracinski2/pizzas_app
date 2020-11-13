Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/pizzas" => "pizzas#index"
    get "/pizzas/:id" => "pizzas#show"
    post "/pizzas" => "pizzas#create"
    patch "/pizzas/:id" => "pizzas#update"
    delete "/pizzas/:id" => "pizzas#delete"
  end
  
end
