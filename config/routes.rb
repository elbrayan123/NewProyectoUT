Rails.application.routes.draw do
  devise_for :alumnos
  devise_for :empresas
  resources :post_vacantes

  root to: 'post_vacantes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
