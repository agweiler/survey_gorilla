user1 = User.create(name: 'Adrian', password: '123')
user2 = User.create(name: 'Andreas', password: '123')

first_survey = Survey.create(name: 'The very first survey in the whole wide world', created_by: user1.id)
byebug
question1 = first_survey.questions.create(text: "Why are women not like men?")
question2 = first_survey.questions.create(text: "How come MaGIC is being renovated after being officiated less than a year?")
question3 = first_survey.questions.create(text: "Who killed Roger Rabbit?")

question1.choices.create(answer: 'Because they just aren\'t')
question1.choices.create(answer: 'They have extra assets')
question1.choices.create(answer: 'They come from Venus!')
question1.choices.create(answer: 'They have longer legs')

question2.choices.create(answer: 'Because they just can')
question2.choices.create(answer: 'They have a sister construction company')
question2.choices.create(answer: 'They didn\'t like the paintjob')
question2.choices.create(answer: 'The initial construction was a \'trick\'')

question3.choices.create(answer: 'Jessica Parker')
question3.choices.create(answer: 'Marvin Acme')
question3.choices.create(answer: 'Eddie Valiant')
question3.choices.create(answer: 'Judge Doom')
question3.choices.create(answer: 'Baby Herman')






