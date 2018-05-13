require "administrate/base_dashboard"

class LessonDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    start_time: Field::String,
    end_time: Field::String,
    teacher: Field::BelongsTo,
    limit: Field::Number,
    repeat_on: Field::String,
    week_days: Field::HasMany,
    lesson_start_at: Field::DateTime,
    lesson_end_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :start_time,
    :end_time,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :start_time,
    :end_time,
    :teacher,
    :limit,
    :repeat_on,
    :week_days,
    :lesson_start_at,
    :lesson_end_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :start_time,
    :end_time,
    :teacher,
    :limit,
    :week_days,
    :lesson_start_at,
    :lesson_end_at,
  ].freeze

  # Overwrite this method to customize how lessons are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(lesson)
  #   "Lesson ##{lesson.id}"
  # end
end
