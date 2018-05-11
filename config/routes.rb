Rails.application.routes.draw do
  root :to => 'welcome#index'

  devise_for :users

  authenticated :user do
    resources :posts, only: [:create, :edit, :update, :destroy]
  end

  resources :posts, only: [:index, :new, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
