class AddCompleterToTask < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :completer, foreign_key: { to_table: :users }
  end
end
