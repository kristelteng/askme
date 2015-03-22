# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

###### CREATE USER ######
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
  title: "Why do people eat meat?", 
  user_id: 1
)

Answer.create!(
  body: "We are fed meat when we are too young to make any choices concerning our health, or anything else. Eating meat becomes a habit, a tradition or a learned behavior; also, whenever we go to a restaurant, meat is usually considered to be the main dish so society has a great deal to do with this issue. When we become adults, it is a personal choice to eat meat or to abstain from it. ",
  user_id: 2,
  question_id: q1.id,
)

Answer.create!(
  body: "Eating meat is a natural food source for Vitamin B 12 as well as a number of micro nutrients not naturally occurring in other food types. It is the reason that humans have grown and developed over the millennium and that human brains have developed to the level they are. Without meat human's have to fall back on artificial sources of many of these which may have long term negative effects. ",
  user_id: 3,
  question_id: q1.id,
)

Answer.create!(
  body: "Because from the beginning of time, that's what we eat. That was until people found out that you can eat peanuts to substitute meat. But there are a few people, like me, that are allergic to peanuts, or all types, and we have no choice if we want to be vegan or not. I have to eat meat, if I want to or not. ",
  user_id: 4,
  question_id: q1.id,
)

###### QUESTIONS BY USER_ID: 1 ######
q2 = Question.create!(
  title: "Why do people deny climate change?",
  user_id: 1
)

Answer.create!(
  body: "Yes! it is fact that climate is changing. Perhaps, it's not exactly same with the mentioned time-frame of climate experts. This world having big natural calamity frequently. Still many people deny climate change- I think it's reason is mostly political or avoiding responsibility of causes of this changes.",
  user_id: 2,
  question_id: q2.id,
)

Answer.create!(
  body: "This is just one of the ways that American politics is broken. In the UK and Australia there's pretty much a consensus that climate change is a real thing that needs to be avoided, but in the US special interest groups and low voter turn-out conspire to turn the Republican party presidential primaries into a who can deny climate change more competition ",
  user_id: 3,
  question_id: q2.id,
)

Answer.create!(
  body: "I don't deny it, it's that I do not naively assume that it's entirely manmade. There have always been periods of climate change. The establishment is using the currently one as an excuse for tax increases and other forms of control. Wake up Americans, wake up to the ulterior motive behind this. ",
  user_id: 4,
  question_id: q2.id,
)


###### QUESTIONS BY USER_ID: 2 ######
q3 = Question.create!(
title: "Which fast food place offers the best value for the dollar?",
text: "I have 6.00 I want the most food for my money where would I go to get this? Also what combinations",
user_id: 2
)

Answer.create!(
  body: "Dairy Queen, Burger King, Taco Bell",
  user_id: 1,
  question_id: q3.id,
)

Answer.create!(
  body: "McDonald's ",
  user_id: 3,
  question_id: q3.id,
)

Answer.create!(
  body: "Olive Garden",
  user_id: 4,
  question_id: q3.id,
)

###### QUESTIONS BY USER_ID: 2 ######
Question.create!(
title: "Which of these places has the best chocolate milkshake?", 
user_id: 2
)

Question.create!(
title: "Marriage is the best way to begin family life. Do you agree or disagree? Give logical reasons for you view.?",
user_id: 2
)

Question.create!(
title: "What does the word profundity mean?",
user_id: 2
)

Question.create!(
title: "Why do smart people go to college when it is the uneducated who need the schooling?",
user_id: 2
)


###### QUESTIONS BY USER_ID: 3 ######
q4 = Question.create!(
title: "I'm looking for a new outdoor umbrellas, would you consider this lime green color one?",
text: "I searched the Internet, and this lime green umbrella comes to my eyes: http://www.amazon.com/gp/product/B00ICFWFHG, What a beautiful one! I like this color, but never tried this before. So I really need your suggestions. ",
user_id: 3
)

Answer.create!(
  body: "I'm 73 years old. If I were replacing my present outdoor umbrella, I'd buy the lime green one. It's a very 'in' colour just now and no reason to believe it's going to look dated for a long time. As Tony said, the colour is easy on the eyes. ",
  user_id: 1,
  question_id: q4.id,
)

Answer.create!(
  body: "I love that color, it's so fresh and makes me feel happy. Yes, I definitely would buy a lime green umbrella.",
  user_id: 2,
  question_id: q4.id,
)

Answer.create!(
  body: "Yes, I like it. It's this lime green color I'm looking for. ",
  user_id: 4,
  question_id: q4.id,
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
q5 = Question.create!(
title: "Do you like Shepard's Pie?",
user_id: 4
)

Answer.create!(
  body: "Yes, I do love shepard's pie!",
  user_id: 1,
  question_id: q5.id,
)

Answer.create!(
  body: "Yes I do, but I actually prefer cottage pie. ",
  user_id: 2,
  question_id: q5.id,
)

Answer.create!(
  body: "Yes. My Partner makes it from the leftover roast lamb and it is really good",
  user_id: 3,
  question_id: q5.id,
)

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
