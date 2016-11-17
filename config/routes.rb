Rails.application.routes.draw do
  resources :storage_spaces, only: [ :index, :show, :new, :create ]
  # GET /storage_spaces          => :index
  # GET /storage_spaces/new      => :new
  # POST /storage_spaces         => :created
  # GET /storage_spaces/:id      => :show
  # GET /storage_spaces/:id/edit => :edit
  # PATCH /storage_spaces/:id    => :update
  # DELETE /storage_spaces/:id.  => :destroy

  devise_for :users
  root to: 'pages#home'

  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
