Whistler::Application.routes.draw do
  get  'signup' => 'users#new'
  post 'signup' => 'users#create'

  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'profile/:username' => 'users#show', as: :user
end
