# frozen_string_literal: true

class DataProvider < ApplicationRecord
  belongs_to :provideable, polymorphic: true
  has_one :address, as: :addressable
  has_one :contact, as: :contactable
  has_one :logo, as: :web_urlable, class_name: "WebUrl"
end

# == Schema Information
#
# Table name: data_providers
#
#  id               :bigint           not null, primary key
#  name             :string(255)
#  logo             :string(255)
#  description      :string(255)
#  provideable_type :string(255)
#  provideable_id   :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
