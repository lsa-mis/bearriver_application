require "administrate/base_dashboard"

class WorkshopDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    enrollments: Field::HasMany,
    applications: Field::HasMany,
    id: Field::Number,
    instructor: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    first_name: Field::String,
    last_name: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :enrollments,
    :applications,
    :id,
    :instructor,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :enrollments,
    :applications,
    :id,
    :instructor,
    :created_at,
    :updated_at,
    :first_name,
    :last_name,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :enrollments,
    :applications,
    :instructor,
    :first_name,
    :last_name,
  ].freeze

  # Overwrite this method to customize how workshops are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(workshop)
  #   "Workshop ##{workshop.id}"
  # end
end
