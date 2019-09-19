class QuizzesController < ApplicationController
    def index
      @quizzes = Trivium.order("Random()").first
    end

    
end
