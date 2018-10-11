class CreateCommentPs < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_ps do |t|
      t.text :comment
      t.integer :c_id

      t.timestamps
    end
  end
end
