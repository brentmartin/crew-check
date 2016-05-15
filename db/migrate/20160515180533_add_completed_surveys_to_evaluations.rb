class AddCompletedSurveysToEvaluations < ActiveRecord::Migration
  def change
    add_reference :evaluations, :completed_survey, index: true, foreign_key: true
  end
end
