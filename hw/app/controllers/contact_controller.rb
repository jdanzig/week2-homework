class ContactController < ApplicationController
  def new
  end

  def create
  	@first_name = params[:first_name]
  	@last_name = params[:last_name]
  end
end
