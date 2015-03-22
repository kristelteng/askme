# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# CREATE USER

User.create!(
email: "bob.pen@example.com",
password: "1234",
password_confirmation: "1234",
)

User.create!(
email: "pammymaker@example.com",
password: "1234",
password_confirmation: "1234",
)

User.create!(
email: "rogy@example.com",
password: "1234",
password_confirmation: "1234",
)

User.create!(
email: "job@example.com",
password: "1234",
password_confirmation: "1234",
)


###### QUESTIONS BY USER_ID: 1 ######
q1 = Question.create!(
  title: "Do I wear too much makeup?", 
  user_id: 1
)
Answer.create!(
  body: "I don't agree. McDonalds is better.",
  user_id: 2,
  question_id: q1.id,
)
Answer.create!(
  body: "You're wrong, Burger King is better.",
  user_id: 3,
  question_id: q1.id,
)

###### QUESTIONS BY USER_ID: 1 ######
Question.create!(
title: "Anyone with good advice for high school?",
user_id: "1"
)
###### QUESTIONS BY USER_ID: 1 ######
Question.create!(
title: "What is the most popular fast food in america?",
user_id: "1"
)
###### QUESTIONS BY USER_ID: 1 ######
Question.create!(
title: "Does anyone else out there think that Taco Bell sucks?",
user_id: "1"
)



###### QUESTIONS BY USER_ID: 2 ######
Question.create!(
title: "Which of these places has the best chocolate milkshake?", 
user_id: "2"
)

Question.create!(
title: "Marriage is the best way to begin family life. Do you agree or disagree? Give logical reasons for you view.?",
user_id: "2"
)

Question.create!(
title: "What does the word profundity mean?",
user_id: "2"
)

Question.create!(
title: "Why do smart people go to college when it is the uneducated who need the schooling?",
user_id: "2"
)



###### QUESTIONS BY USER_ID: 3 ######
Question.create!(
title: "Can dirty transmission fluid keep the car from moving?", 
user_id: "3"
)

Question.create!(
title: "Is this weird I'm 22 and haven't be kissed?",
user_id: "3"
)

Question.create!(
title: "What is the cutest dog in the world?",
user_id: "3"
)

Question.create!(
title: "DESPERATELY need help walking my dog? He's way too strong!?",
user_id: "3"
)


###### QUESTIONS BY USER_ID: 4 ######
Question.create!(
title: "IPhone 6 or 6 Plus?", 
user_id: "4"
)

Question.create!(
title: "Can a text message be sent to a turned off phone?",
user_id: "4"
)

Question.create!(
title: "When does GTA V come out for PS2?",
user_id: "4"
)

Question.create!(
title: "Is it hard to repair a Vizio TV?",
user_id: "4"
)


