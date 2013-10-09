class Answer < ActiveRecord::Base
  belongs_to :question


   def correct_answer
    answers.find_by_correctness(true)
  end
  
end
