class CreateProjectCs < ActiveRecord::Migration[5.2]
  def change
    create_table :project_cs do |t|
      t.text :comment
      t.integer :c_id

      t.timestamps
    end
  end
end
