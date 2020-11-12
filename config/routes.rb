Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/todos" => "todos#index"
  get "/todos/:id" => "todos#show"
  post "/todos" => "todos#create"
  put "/todos/:id" => "todos#update"
  delete "/todos/:id" => "todos#destroy"
end
