class CompletedSurveysController < ApplicationController
  before_action :set_completed_survey, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @survey = Survey.find(params[:survey_id])
    @completed_survey = CompletedSurvey.new(survey: @survey)
    @survey.questions.each do |question|
      @completed_survey.evaluations.build(question: question)
    end
  end

  def create
    completed_survey = CompletedSurvey.new(completed_survey_params)
    completed_survey.save
    redirect_to root_path
  end

  private

  def set_completed_survey
    @completed_survey = CompletedSurvey.find(params[:id])
  end

  def completed_survey_params
    params.require(:completed_survey).permit(:survey_id, evaluations_attributes:[:id, :answer, :question_id, :completed_survey_id])
  end
end
