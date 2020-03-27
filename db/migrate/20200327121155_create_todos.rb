class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :name
      t.boolean :done, default: false
      t.date :due_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
