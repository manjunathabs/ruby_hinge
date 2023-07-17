Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/api/tree', to: 'trees#index'
    post '/api/tree', to: 'trees#create'

end
