class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.integer :user_id
      t.string :lesson_name
      t.string :lesson_description
      t.string :language
      t.integer :current_stage
      t.string :image_link

      t.timestamps
    end
  end
end
