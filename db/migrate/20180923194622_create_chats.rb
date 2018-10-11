class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.text :name
      t.integer :c_id

      t.timestamps
    end
  end
end
