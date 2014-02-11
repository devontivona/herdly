class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :location
      t.integer :reward
      t.date :due_date

      t.timestamps
    end
  end
end
