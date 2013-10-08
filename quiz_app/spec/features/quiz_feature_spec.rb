require 'spec_helper'

	def create_quiz(sometitle)
		Quiz.create(:title => sometitle)
	end


	describe 'the quizzes section' do

	 
	before(:all) do
    	create_quiz 'Some quiz'
  	end

	describe '/quizzes' do
		it 'should display quizzes' do
			visit '/quizzes'
			expect(page).to have_content 'Some quiz'	
		end	
	end

end