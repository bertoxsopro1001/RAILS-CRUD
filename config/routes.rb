Rails.application.routes.draw do
  root 'crud#index'
  get '/new', to: 'crud#new'
  post '/new/add', to: "crud#add"
  get '/user/view/:id', to: "crud#view"
 

end
