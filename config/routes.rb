Rails.application.routes.draw do
  resources :books, except: :update
end
