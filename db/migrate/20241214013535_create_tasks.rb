class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :completed

      t.timestamps
    end
    add_index :tasks, :title
  end
end
