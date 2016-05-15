class CreateCompletedSurveys < ActiveRecord::Migration
  def change
    create_table :completed_surveys do |t|
      t.belongs_to :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
