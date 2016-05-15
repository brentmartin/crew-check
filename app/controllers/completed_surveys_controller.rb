class CompletedSurveysController < ApplicationController

  def show
  end

  def new
    survey = Survey.first
    @completed_survey = CompletedSurvey.new(survey: survey)
    survey.questions.each do |question|
      # @completed_survey.evaluations.build(question: question)
    end
  end

end
