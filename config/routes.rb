Rails.application.routes.draw do
  root "projects#index"
  resources :projects do
    resources :tasks do
      member do 
        get :complete
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
