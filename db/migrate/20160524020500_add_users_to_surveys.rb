class AddUsersToSurveys < ActiveRecord::Migration
  def change
    add_reference :surveys, :user, index: true, foreign_key: true
  end
end
