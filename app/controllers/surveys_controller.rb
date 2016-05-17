class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]

  def new
    @assessment = Assessment.all
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    @survey.save
    redirect_to new_survey_path
  end

  private

  def set_survey
    @survey = Survey.find(params[:id])
  end

  def survey_params
    params.require(:survey).permit(:id, :survey_id, :heading, :intro, :assessment_id)
  end
end
