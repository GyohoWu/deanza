class CreateClassposts < ActiveRecord::Migration[5.2]
  def change
    create_table :classposts do |t|
      t.text :prof
      t.text :source
      t.text :comment
      t.text :rate
      t.text :grade
      t.text :success
      t.text :sort

      t.timestamps
    end
  end
end
