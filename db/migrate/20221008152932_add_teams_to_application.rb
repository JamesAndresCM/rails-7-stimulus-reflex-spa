class AddTeamsToApplication < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :team, foreign_key: true, null: false
    add_reference :lists, :team, foreign_key: true, null: false
  end
end
