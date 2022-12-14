Rails.application.routes.draw do
  devise_for :users
  devise_for :confirmables
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'expenses#index'
  root 'expenses#index'
  resources :expenses
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
end
