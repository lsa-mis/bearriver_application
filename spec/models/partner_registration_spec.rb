# == Schema Information
#
# Table name: partner_registrations
#
#  id          :bigint           not null, primary key
#  description :string
#  cost        :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  active      :boolean
#
require 'rails_helper'

RSpec.describe PartnerRegistration, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
