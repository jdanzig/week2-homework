Rails.application.routes.draw do

  get :greet, :to => 'greet#index'

  get :contact, :to => 'contact#new'

  post :contact_submitted, :to => 'contact#create'

end