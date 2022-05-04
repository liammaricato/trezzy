Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/sessions" }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: redirect('/1/entries', status: 302)

  get ":cashflow_id/entries", to: "entries#index"
  
  devise_scope :user do
    get "registration/:rc", to: "users/registrations#new"
  end
end
