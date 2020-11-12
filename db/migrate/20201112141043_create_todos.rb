class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title, null:false
      t.text :description, null:false
      t.boolean :completed, null:false, default:false
      t.date :date, null:false

      t.timestamps
    end
  end
end
