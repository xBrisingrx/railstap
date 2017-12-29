Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'

  resources :empresas, :vehiculos, :tipo_vehiculos

  resources :personas do
  	collection do
  		get 'dni_unico'
  	end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
