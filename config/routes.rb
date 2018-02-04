Rails.application.routes.draw do


  get 'part/index'

  get 'part/new'

  get 'part/create'

  get 'part/edit'

  get 'part/update'

  get 'part/destroy'

  resources :fuels
  resources :part
  root 'home#index'
  get 'fuels/index'

  get 'fuels/new'
  get 'fuels/create'
  get 'fuels/edit'
  delete 'fuels/destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
