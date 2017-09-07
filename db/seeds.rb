

values = [ -1, 1]

users = []
50.times do
  users << User.create(username: Faker::GameOfThrones.character, email: Faker::Internet.email, password: "password")
end

questions = []
answers = []

6.times do
  question = Question.create(title: Faker::Hipster.sentence, body: Faker::Hipster.paragraph, user: users.sample)
  4.times do
    question.votes.create(user: users.sample, value: values.sample)
    4.times do
      question.comments.create(statement: Faker::Hipster.sentence, user: users.sample )
      questions << question
    end
  end
end

6.times do
  answer = Answer.create(body: Faker::Hipster.sentence, user: users.sample, question: questions.sample)
  4.times do
    answer.votes.create(user: users.sample, value: values.sample)
    (4).times do
      answer.comments.create(statement: Faker::Hipster.sentence, user: users.sample)
      answers << answer
    end
  end
end
