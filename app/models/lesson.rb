class Lesson < ApplicationRecord
  belongs_to :teacher
  has_and_belongs_to_many :week_days
end
