class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :text
      t.integer :list_id
      t.boolean :completed, default: false
      t.boolean :remind_by_date
      t.datetime :date
      t.boolean :remind_by_location
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :repeat

      t.timestamps
    end
  end
end
