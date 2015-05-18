class Question < ActiveRecord::Base
  belongs_to :poll

  has_many :possible_answers
  has_many :answers

  validates_presence_of :title, :kind
  #Next line allows us to evaluate each block with answer. 
  accepts_nested_attributes_for :possible_answers, reject_if: proc { |attributes| attributes['title'].blank? }

end
