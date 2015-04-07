class RpsController < ApplicationController
  def start
  end

  def winner
  	@user_weapon = params[:weapon]
  	@comp_weapon = ['rock','paper','scissors'].sample
  	if @user_weapon == @comp_weapon
  		@winner = :tie
  	elsif @user_weapon == 'rock' && @comp_weapon == 'paper'
  		@winner = :comp
  	elsif @user_weapon == 'paper' && @comp_weapon == 'scissors'
  		@winner = :comp
  	elsif @user_weapon == 'scissors' && @comp_weapon == 'rock'
  		@winner = :comp
  	else
  		@winner = :user
  	end
  end

end
