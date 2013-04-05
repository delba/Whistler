Whistler::Application.routes.draw do
  get  'signup' => 'users#new'
  post 'signup' => 'users#create'

  get 'profile/:username' => 'users#show', as: :user
  post 'users' => 'users#create', as: :users
end
