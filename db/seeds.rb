# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Create a single user
user = User.create(email: Faker::Internet.safe_email, password: "password")

# Create a single assessment
assessment = Assessment.create(title: Faker::Name.title + " Assessment", description: Faker::Company.catch_phrase)

  # Create questions for the assessment
assessment.questions << Question.create(body: Faker::Hacker.say_something_smart+"?")
assessment.questions << Question.create(body: Faker::Hacker.say_something_smart+"?")
assessment.questions << Question.create(body: Faker::Hacker.say_something_smart+"?")
assessment.questions << Question.create(body: Faker::Hacker.say_something_smart+"?")
assessment.questions << Question.create(body: Faker::Hacker.say_something_smart+"?")
assessment.questions << Question.create(body: Faker::Hacker.say_something_smart+"?")

# Create a survey
survey = Survey.create(assessment: assessment, user: user, heading: Faker::StarWars.quote, intro: Faker::Hipster.paragraph(rand(2..5)))

# Create a completed survey with answers
completed_survey = CompletedSurvey.create(survey: survey)
completed_survey.survey.questions.each do |question|
  completed_survey.evaluations << Evaluation.create(question: question, answer: rand(1..5))
end
