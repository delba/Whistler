Whistler::Application.routes.draw do

  get '/sign-up', controller: 'users', action: 'new', as: 'new_user'

end
