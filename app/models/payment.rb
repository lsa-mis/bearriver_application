# == Schema Information
#
# Table name: payments
#
#  id                 :bigint           not null, primary key
#  transaction_type   :string
#  transaction_status :string
#  transaction_id     :string
#  total_amount       :string
#  transaction_date   :string
#  account_type       :string
#  result_code        :string
#  result_message     :string
#  user_account       :string
#  payer_identity     :string
#  timestamp          :string
#  transaction_hash   :string
#  user_id            :bigint
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  conf_year          :integer
#
class Payment < ApplicationRecord
  validates :transaction_id, presence: true, uniqueness: true
  validates :total_amount, presence: true
  belongs_to :user
  validate :manual_payment_integer
  before_save :check_manual_amount

  scope :current_conference_payments, -> { where('conf_year = ? ', ApplicationSetting.get_current_app_year) }

  def manual_payment_integer
    if self.transaction_type == "ManuallyEntered"
      unless self.total_amount !~ /\D/
        errors.add(:total_amount, "should be an integer")
      end
    end
  end

  def check_manual_amount
    if self.transaction_type == "ManuallyEntered"
      self.total_amount = (self.total_amount.to_i * 100).to_s
    end
  end

end
