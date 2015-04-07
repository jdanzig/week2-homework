Rails.application.routes.draw do
  get :greet, :to => 'greet#index'

end