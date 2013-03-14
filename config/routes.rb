Whistler::Application.routes.draw do

  get '/sign-up', controller: 'users', action: 'new', as: 'new_user'
  get '/profile/:username', controller: 'users', action: 'show', as: 'user'
  post '/users/index', controller: 'users', action: 'create', as: 'users'

end
