Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
        resources :users, :games, :cards, only: [:create, :show, :index, :edit, :destroy]
    end
  end
end