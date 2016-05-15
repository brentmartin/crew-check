class CompletedSurvey < ActiveRecord::Base
  has_many :evaluations
  belongs_to :survey
end
