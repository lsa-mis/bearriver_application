class Application < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true
  validates :birth_year, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :country, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :workshop_selection1, presence: true
  validates :workshop_selection2, presence: true
  validates :workshop_selection3, presence: true
  validates :lodging_selection, presence: true
  validates :partner_registration_selection, presence: true

  HOW_DID_YOU_HEAR = ['Word of Mouth', 'Magazine Advertisement', 'Online Advertisement', 'Newspaper Advertisement']

  belongs_to :user
  has_many :enrollments, dependent: :destroy
  has_many :workshops, through: :enrollments

  has_one :reservation, dependent: :destroy
  has_one :lodging, through: :reservation

end
