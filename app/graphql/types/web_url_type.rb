# frozen_string_literal: true

module Types
  class WebUrlType < Types::BaseObject
    field :id, ID, null: true
    field :url, String, null: true
    field :description, String, null: true
  end
end
