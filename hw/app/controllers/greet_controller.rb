class GreetController < ApplicationController
  def index
  	@salutation = params[:salutation]
  end
end
