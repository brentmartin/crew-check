class Survey < ActiveRecord::Base
  has_many :questions, through: :assessments

  belongs_to :assessment
end
