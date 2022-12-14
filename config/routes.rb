Rails.application.routes.draw do
  root to: "main#index"
  devise_for :users
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
    post "/users/sign_up" => "devise/registrations#create"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
