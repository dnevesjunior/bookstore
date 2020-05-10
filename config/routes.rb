Rails.application.routes.draw do
  resources :books, except: :update do
    post 'search', on: :collection
  end
end
