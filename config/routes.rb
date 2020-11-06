Rails.application.routes.draw do

  get 'realisations', to: 'pages#realisations', as: 'realisations'
  get 'about_me', to: 'pages#about_me', as: 'about_me'
  get 'contact', to: 'pages#contact', as: 'contact'

  resources :categories, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
