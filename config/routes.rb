Rails.application.routes.draw do
  root to: "pages#home"
  get "sondages", to: "pages#sondage"
  get "qui-sommes-nous", to: "pages#propos"
  get "devenir-co-creatrice", to: "pages#creatrice"
  get "facebook", to: "pages#facebook"
  get "contact", to: "pages#contact"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :newsletters
end
