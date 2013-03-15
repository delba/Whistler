Whistler::Application.routes.draw do
  get 'sign-up' => 'users#new', as: :new_user
  get 'profile/:username', 'users#show', as: :user
  post 'users' => 'users#create', as: :users
end
