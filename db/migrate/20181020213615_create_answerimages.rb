class CreateAnswerimages < ActiveRecord::Migration[5.2]
  def change
    create_table :answerimages do |t|
      t.string :answer
      t.integer :q_id
      t.string :image

      t.timestamps
    end
  end
end
