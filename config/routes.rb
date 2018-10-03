Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'

  get '/modelo_vehiculos/ajax_modelos', 
    to: 'modelo_vehiculos#ajax_modelos', 
    as: 'ajax_modelos'

  # get '/marca_vehiculos/ajax_marcas', to: 'marca_vehiculos#ajax_marcas', as: 'ajax_marcas'

  resources :empresas, :vehiculos, :tipo_vehiculos, :marca_vehiculos,:modelo_vehiculos

  resources :personas do
  	collection do
  		get 'dni_unico'
  		get 'cuil_unico'
  	end
  end




end
