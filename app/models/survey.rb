class Survey < ActiveRecord::Base
  has_many :questions, through: :assessment
  has_many :completed_surveys

  belongs_to :user
  belongs_to :assessment
end
