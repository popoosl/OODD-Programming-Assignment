Rails.application.routes.draw do

#  get 'members/new'
resources :members
 
root 'welcome#index'
get  '/signup',  to: 'members#new'
post '/signup',  to: 'members#create'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
