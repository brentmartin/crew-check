class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :heading
      t.string :intro
      t.belongs_to :assessment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
