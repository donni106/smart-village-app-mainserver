# frozen_string_literal: true

class NewsItem < ApplicationRecord
  has_many :content_blocks, as: :content_blockable
  has_one :data_provider, as: :provideable
  has_one :adress, as: :adressable
end

# == Schema Information
#
# Table name: news_items
#
#  id                     :bigint           not null, primary key
#  author                 :string(255)
#  type                   :string(255)
#  full_version           :boolean
#  characters_to_be_shown :integer
#  publication_date       :datetime
#  published_at           :datetime
#  show_publish_date      :boolean
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
