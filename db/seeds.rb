# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Assessments
# Questions
# Evaluations
# 4.times do
#   assess = Assessment.create(title:Faker::Name.title, description:Faker::Company.catch_phrase)
#   5.times do
#     @question = Question.create(body:Faker::Company.bs + "?", assessment_id: assess.id)
#     if @question.save
#       Evaluation.create(question_id: @question.id)
#     end
#   end
# end
#
# # Surveys
# 8.times do
#   Survey.create(heading: Faker::StarWars.quote, intro: Faker::Hipster.paragraph(rand(2..5)), assessment_id: rand(1..Assessment.count))
# end

# Create a user (not yet!)
# Admin will create an assessment (template) that will be viewed by potential assessees
# Create a single assessment
assessment = Assessment.create(title: Faker::Name.title, description: Faker::Company.catch_phrase)

  # Create questions for the assessment
assessment.questions << Question.create(body: "Question one")
assessment.questions << Question.create(body: "Question two")
assessment.questions << Question.create(body: "Question three")
assessment.questions << Question.create(body: "Question four")
assessment.questions << Question.create(body: "Question five")
assessment.questions << Question.create(body: "Question six")

# Create a survey
survey = Survey.create(assessment: assessment, heading: Faker::StarWars.quote, intro: Faker::Hipster.paragraph(rand(2..5)))

# Create a completed survey with answers
completed_survey = CompletedSurvey.create(survey: survey)
completed_survey.survey.questions.each do |question|
  completed_survey.evaluations << Evaluation.create(question: question, answer: rand(1..5))
end
