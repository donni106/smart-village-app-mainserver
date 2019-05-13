# frozen_string_literal: true

require "rails_helper"

RSpec.describe Region, type: :model do
  it { is_expected.to have_many(:locations) }
end

# == Schema Information
#
# Table name: regions
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
