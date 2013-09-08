class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :time
      t.string :description

      t.timestamps
    end
  end
end
