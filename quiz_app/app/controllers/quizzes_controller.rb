class QuizzesController < ApplicationController

	def index
    	@quizzes = Quiz.all
  	end

  	def show
		@quiz = Quiz.find(params[:id])
	end

	def new
		@quiz = Quiz.new
		@question = @quiz.questions.build
		# 4.times { @question.answers.build }
	end

	def create
		quiz = Quiz.create(params[:quiz].permit(:title, questions_attributes: [:query]))
		redirect_to quiz
	end	



end