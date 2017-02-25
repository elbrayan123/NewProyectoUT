Rails.application.routes.draw do
  resources :post_vacantes

  root to: 'post_vacantes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
