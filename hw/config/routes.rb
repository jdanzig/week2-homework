Rails.application.routes.draw do

  get 'dice/roll'

  get :greet, :to => 'greet#index'
  
  get :contact, :to => 'contact#new'
  post :contact_submitted, :to => 'contact#create'

  scope :rps, :controller => :rps, :as => :rps do
  	root :action => :start, :via => [ :get ], :as => :begin
  	post :result, :action => :winner, :as => :outcome
  end

end