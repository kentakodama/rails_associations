# == Schema Information
#
# Table name: polls
#
#  id      :integer          not null, primary key
#  title   :string           not null
#  user_id :integer
#

class Poll < ApplicationRecord
  belongs_to :author,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  has_many :questions,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Question
end
