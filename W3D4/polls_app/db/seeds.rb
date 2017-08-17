# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ActiveRecord::Base.transaction do
  User.destroy_all
  user1 = User.create(username: 'Kenta')
  user2 = User.create(username: 'Priya')

  poll1 = Poll.create(title: 'Hobbies')

  question1 = Question.create(text: 'what are your hobbies?', poll_id: poll1.id)
  choice1 = Answerchoice.create(text: 'cycling', question_id: question1.id)
  choice2 = Answerchoice.create(text: 'talking', question_id: question1.id)
  choice3 = Answerchoice.create(text: 'drawing', question_id: question1.id)
  choice4 = Answerchoice.create(text: 'drinking', question_id: question1.id)

  question2 = Question.create(text: 'what are your fears?', poll_id: poll1.id)
  choice5 = Answerchoice.create(text: 'water', question_id: question2.id)
  choice6 = Answerchoice.create(text: 'crocodile', question_id: question2.id)
  choice7 = Answerchoice.create(text: 'height', question_id: question2.id)
  choice8 = Answerchoice.create(text: 'rails', question_id: question2.id)

  response1 = Response.create(answerchoice_id: choice5.id, user_id: 2)



end
