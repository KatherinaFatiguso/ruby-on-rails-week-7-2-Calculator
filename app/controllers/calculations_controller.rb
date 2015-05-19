class CalculationsController < ApplicationController

  # EXERCISE 7.2.8
  # Create a new Rails app called calculator
  # Create a new controller which has the following GET actions
  # 1. add:	adds two numbers
  # 2. subtract:	subtracts two numbers
  # 3. sin:	calculates the sine of the given number
  # 4. hyp:	calculates the length of the hypoteneus of a triangle
  #         given the other two sides
  # Add to git and push to Github

  def index
    @input1 = params[:input1]
    @input2 = params[:input2]
  end

  def show
    redirect_to calculations_show_path
  end

  #add the two numbers
  def add
    @input1 = params[:input1]
    @input2 = params[:input2]
    @input1 = @input1.to_i
    @input2 = @input2.to_i
    @add = @input1 + @input2
  end

  #subtract the two numbers
  def subtract
    @input1 = params[:input1]
    @input2 = params[:input2]
    @input1 = @input1.to_i
    @input2 = @input2.to_i
    @subtract = @input1 - @input2
  end

  def sine
    @input = params[:input]
    @sine = Math.sin(@input.to_i)
  end

  def hypotenuse
    @input1 = params[:input1]
    @input2 = params[:input2]
    @input1 = @input1.to_i
    @input2 = @input2.to_i
    @hypotenuse = Math.sqrt((@input1**2) + (@input2**2))
  end


end
