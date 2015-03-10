class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :name
      t.text :notes
      t.text :learning

      t.timestamps null: false
    end
  end
end
