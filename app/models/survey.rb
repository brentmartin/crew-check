class Survey < ActiveRecord::Base
  has_many :questions, through: :assessment

  belongs_to :assessment
end
