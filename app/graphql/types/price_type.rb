module Types
  class PriceType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :price, Integer, null: true
    field :group_price, Boolean, null: true
    field :age_from, Integer, null: true
    field :age_to, Integer, null: true
    field :min_adult_count, Integer, null: true
    field :max_adult_count, Integer, null: true
    field :min_children_count, Integer, null: true
    field :max_children_count, Integer, null: true
    field :description, String, null: true
  end
end