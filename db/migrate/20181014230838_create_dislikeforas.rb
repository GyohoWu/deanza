class CreateDislikeforas < ActiveRecord::Migration[5.2]
  def change
    create_table :dislikeforas do |t|
      t.integer :dislike_id

      t.timestamps
    end
  end
end
