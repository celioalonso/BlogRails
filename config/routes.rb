Rails.application.routes.draw do
  resources :authors
  get  '/site', to: 'site#index'
  root to: 'site#index'
  get '/posts', to: 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
