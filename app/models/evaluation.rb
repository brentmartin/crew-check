class Evaluation < ActiveRecord::Base
  belongs_to :question
  belongs_to :completed_survey
end
