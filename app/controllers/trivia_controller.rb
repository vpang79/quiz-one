class TriviaController < ApplicationController
  def index
    @trivium = Trivium.order("Random()").first
  end

  def new
    @trivium = Trivium.new
  end

  def create  
    @trivium = Trivium.create(trivia_params)
      if @trivium.invalid?
      flash[:error] = '<strong>Could not save!</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def trivia_params
    params.require(:trivium).permit(:question, :answer)
  end


end
