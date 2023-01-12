class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :task
      t.string :importance
      t.date :complete_by
    end
  end
end
