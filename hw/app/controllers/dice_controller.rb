class DiceController < ApplicationController
  def roll
  	@roll_num = params[:roll_num].to_i + 1
  	@goal = params[:goal].to_i if @roll_num > 1
  	@numbers = [[1,2,3,4,5,6].sample,[1,2,3,4,5,6].sample]
  	@sum = @numbers.inject(:+) # http://ruby-doc.org/core-2.2.0/Enumerable.html#method-i-inject
  	if [7,11].include?(@sum) && @roll_num == 1
  		@result = :win
  	elsif [2,3,12].include?(@sum) && @roll_num == 1
  		@result = :lose
  	elsif @roll_num == 1
  		@goal = @sum
  		@result = :roll
  	elsif @sum == 7
  		@result = :lose
  	elsif @sum == @goal
  		@result = :win
  	else
  		@result = :roll
  	end
  end
end
