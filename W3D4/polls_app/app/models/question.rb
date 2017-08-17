# == Schema Information
#
# Table name: questions
#
#  id      :integer          not null, primary key
#  text    :string
#  poll_id :integer
#

class Question < ApplicationRecord
  belongs_to :poll,
  primary_key: :id,
  foreign_key: :poll_id,
  class_name: :Poll

  has_many :answer_choices,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :Answerchoice
end