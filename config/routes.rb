Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  resources :portofolios, except: [:show] do 
    put :sort, on: :collection
  end

  get 'angular-items', to: 'portofolios#angular'

  get 'portofolio/:id', to: 'portofolios#show', as: 'portofolio_show'

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
