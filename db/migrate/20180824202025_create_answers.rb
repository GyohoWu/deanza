class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :answer
      t.string :q_id
      t.string :integer

      t.timestamps
    end
  end
end
