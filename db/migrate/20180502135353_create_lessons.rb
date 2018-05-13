class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :start_time
      t.string :end_time
      t.belongs_to :teacher, foreign_key: true
      t.integer :limit
      t.string :repeat_on
      t.date :lesson_start_at
      t.date :lesson_end_at
    end
  end
end
