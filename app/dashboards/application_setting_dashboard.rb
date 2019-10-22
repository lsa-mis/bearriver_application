require "administrate/base_dashboard"

class ApplicationSettingDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    opendate: Field::DateTime,
    application_buffer: Field::Number,
    contest_year: Field::Number,
    time_zone: Field::String,
    allow_payments: Field::Boolean,
    active_application: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    # :id,
    :contest_year,
    :opendate,
    :application_buffer,
    :allow_payments,
    :active_application,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :opendate,
    :application_buffer,
    :contest_year,
    :time_zone,
    :allow_payments,
    :active_application,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :opendate,
    :application_buffer,
    :contest_year,
    :time_zone,
    :allow_payments,
    :active_application,
  ].freeze

  # Overwrite this method to customize how application settings are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(application_setting)
    "Settings for #{application_setting.contest_year}"
  end
end
