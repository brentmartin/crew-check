class Survey < ActiveRecord::Base
  has_many :questions, through: :assessment
  has_many :completed_surveys

  belongs_to :assessment
end
