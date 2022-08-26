class CreateStages < ActiveRecord::Migration[7.0]
  def change
    create_table :stages do |t|
      t.integer :lesson_id
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
