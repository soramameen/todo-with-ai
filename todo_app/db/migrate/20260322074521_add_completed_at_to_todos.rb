class AddCompletedAtToTodos < ActiveRecord::Migration[8.1]
  def change
    add_column :todos, :completed_at, :string
    add_column :todos, :datetime, :string
  end
end
