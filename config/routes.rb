Rails.application.routes.draw do

  get 'realisations', to: 'pages#realisations', as: 'realisations'
  get 'about_me', to: 'pages#about_me', as: 'about_me'
  get 'contact', to: 'pages#contact', as: 'contact'


  get 'my_admin_space', to: 'work_shops#index', as: 'my_admin_space'
  get 'my_admin_space/:category_id', to: "work_shops#show", as: 'my_admin_show'
  get 'my_admin_space/:category_id/products/:id', to: "work_shops#product_details", as: 'my_admin_product_show'
  # get 'my_admin_space/:category_id/products/:id', to: "work_shops#show", as: 'my_admin_show'

  resources :categories, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
