class Quiz < ActiveRecord::Base

   has_many :questions
   accepts_nested_attributes_for :questions

   validates :title, presence: true

end
