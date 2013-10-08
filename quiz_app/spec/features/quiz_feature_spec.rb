require 'spec_helper'

	describe '/quizzes' do
		it 'should display quizzes' do
		visit '/quizzes'

		expect(page).to have_content 'Some quiz'	
	end	
	end