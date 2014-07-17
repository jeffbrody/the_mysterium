Rails.application.routes.draw do
  get "pieces/index"
  get "pieces/new"
  get "pieces/edit"
  root "static_pages#home"
  match '/help', to: "static_pages#help", via: 'get'
  match '/about', to: "static_pages#about", via: 'get'

  resources :pieces
end
