class CreateTask < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :priority
      t.integer :category_id
<<<<<<< HEAD
=======
      t.integer :user_id
>>>>>>> 11899e66fca47ebe21af6a64cda176dced2d3407
      t.date :deadline
      t.timestamps
    end
  end
end
