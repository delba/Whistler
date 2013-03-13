Whistler::Application.routes.draw do

  get '/whistles/new', controller: 'whistles', action: 'new', as: 'new_whistle'

end
