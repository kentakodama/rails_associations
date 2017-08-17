class Answerchoice < ApplicationRecord
  belongs_to :question,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :Question
end
