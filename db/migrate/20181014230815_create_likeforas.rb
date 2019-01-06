class CreateLikeforas < ActiveRecord::Migration[5.2]
  def change
    create_table :likeforas do |t|
      t.integer :like_id

      t.timestamps
    end
  end
end
