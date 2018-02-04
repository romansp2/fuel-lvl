Rails.application.routes.draw do

  root 'home#index'

  get 'parts/index'

  get 'parts/new'

  get 'parts/create'

  get 'parts/edit'

  get 'parts/update'

  get 'parts/destroy'

  get 'fuels/index'
  resources :fuels
  resources :parts

  get 'fuels/new'

  get 'fuels/create'

  get 'fuels/edit'

  delete 'fuels/destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
