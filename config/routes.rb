Rails.application.routes.draw do

  root 'static_pages#home'

  resources :contributors, only: [:create, :show]

  resources :teams, only: [] do
    resource :vote, only: :create

    # TODO nest contributors in teams routes
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
