Rails.application.routes.draw do
  get 'storage_space/index'

  get 'storage_space/show'

  get 'storage_space/create'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
