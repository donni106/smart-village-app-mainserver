# frozen_string_literal: true

module Types
  class PointOfInterestType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :mobile_description, String, null: true
    field :active, Boolean, null: true
    field :adresses, [AdressType], null: false
    field :category_id, Integer, null: false
    field :location, LocationType, null: true
    field :data_provider, DataProviderType, null: true
    field :contact, ContactType, null: true
    field :media_contents, [MediaContentType], null: true
    field :operating_company, OperatingCompanyType, null: true
    field :opening_hours, [OpeningHourType], null: true
    field :prices, [PriceType], null: true
    field :certificates, [CertificateType], null: true
    field :updated_at, String, null: true
    field :created_at, String, null: true
  end

  def media_gallery
    PointOfInterest.media_contents
  end
end
