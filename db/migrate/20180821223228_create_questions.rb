class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :prof
      t.text :sort
      t.text :title
      t.text :question

      t.timestamps
    end
  end
end
