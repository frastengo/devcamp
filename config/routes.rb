Rails.application.routes.draw do
  resources :portofolios, except: [:show]

  get 'portofolio/:id', to: 'portofolios#show', as: 'portofolio_show'

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
