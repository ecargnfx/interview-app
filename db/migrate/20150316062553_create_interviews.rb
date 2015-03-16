class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :name
      t.text :notes
      t.text :learning
      t.float :fit
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :interviews, :projects
  end
end
