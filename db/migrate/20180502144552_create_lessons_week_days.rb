class CreateLessonsWeekDays < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons_week_days do |t|
      t.belongs_to :lesson, foreign_key: true
      t.belongs_to :week_day, foreign_key: true
    end
  end
end
