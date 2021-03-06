# frozen_string_literal: true

module Types
  class ContactType < Types::BaseObject
    field :id, ID, null: true
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :phone, String, null: true
    field :fax, String, null: true
    field :web_urls, [WebUrlType], null: true
    field :email, String, null: true
  end
end
