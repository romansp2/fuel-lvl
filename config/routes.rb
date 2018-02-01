Rails.application.routes.draw do


  resources :fuels
  root 'fuels#index'
  get 'fuels/index'

  get 'fuels/new'
  get 'fuels/create'
  get 'fuels/edit'
  delete 'fuels/destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
