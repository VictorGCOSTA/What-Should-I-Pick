Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # Defines the locale scope
  scope '(:locale)', locale: /en|pt-BR|es/ do
    # Defines the root path route ("/")
    resource :recommendations, only: [:create, :new, :show]
    resources :champions, only: [:index, :show]
    root 'application#home'
  end
end
