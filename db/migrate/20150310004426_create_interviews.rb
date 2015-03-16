class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :name
      t.text :notes
      t.text :learning

      # this line adds an integer column called `project_id`.
      t.references :project, index: true
      t.timestamps null: false
    end
  end
end

