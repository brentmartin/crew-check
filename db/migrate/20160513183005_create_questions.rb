class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body
      t.string :context
      t.belongs_to :assessment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
