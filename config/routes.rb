Rails.application.routes.draw do
  root to: "pages#home"
  get "sondages", to: "pages#sondage"
  get "qui-sommes-nous", to: "pages#propos"
  get "devenir-co-creatrice", to: "pages#creatrice"
  get "facebook", to: "pages#facebook"
  get "contact", to: "pages#contact"
  get "cgu", to: "pages#cgu", as: :cgu
  get "mentions-legales", to: "pages#mentions", as: :mentions
  get "politique-confidentialite", to: "pages#confidentialite", as: :confidentialite
  get "faq", to: "pages#faq", as: :faq
  post "contact_send", to: "pages#contact_send", as: :send
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :newsletters
end
