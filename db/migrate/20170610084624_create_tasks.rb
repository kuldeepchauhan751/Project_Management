class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.references :project
      t.integer :owner_id 
      t.timestamps
    end
  end
end
