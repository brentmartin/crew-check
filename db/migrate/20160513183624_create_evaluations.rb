class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.float :answer
      t.boolean :completion
      t.belongs_to :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
