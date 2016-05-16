class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]



  private

  def set_survey
    @survey = Survey.find(params[:id])
  end

  def survey_params
    params.require(:survey).permit(:survey_id, :heading, :intro)
  end
end
