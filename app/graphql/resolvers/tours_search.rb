# frozen_string_literal: true

require "search_object/plugin/graphql"
require "graphql/query_resolver"

class Resolvers::ToursSearch
  include SearchObject.module(:graphql)

  scope { Tour.filtered_for_current_user(context[:current_user]) }

  type types[Types::TourType]

  class ToursOrder < ::Types::BaseEnum
    value "createdAt_ASC"
    value "createdAt_DESC"
    value "updatedAt_ASC"
    value "updatedAt_DESC"
    value "name_ASC"
    value "name_DESC"
    value "id_ASC"
    value "id_DESC"
    value "RAND"
  end

  option :limit, type: types.Int, with: :apply_limit
  option :skip, type: types.Int, with: :apply_skip
  option :order, type: ToursOrder, default: "createdAt_DESC"
  option :category, type: types.String, with: :apply_category

  def apply_limit(scope, value)
    scope.limit(value)
  end

  def apply_skip(scope, value)
    scope.offset(value)
  end

  def apply_order(scope, value)
    scope.order(value)
  end

  def apply_category(scope, value)
    scope.joins(:category).where(categories: { name: value })
  end

  def apply_order_with_created_at_desc(scope)
    scope.order("created_at DESC")
  end

  def apply_order_with_created_at_asc(scope)
    scope.order("created_at ASC")
  end

  def apply_order_with_updated_at_desc(scope)
    scope.order("updated_at ASC")
  end

  def apply_order_with_updated_at_asc(scope)
    scope.order("updated_at ASC")
  end

  def apply_order_with_name_desc(scope)
    scope.order("name DESC")
  end

  def apply_order_with_name_asc(scope)
    scope.order("name ASC")
  end

  def apply_order_with_id_desc(scope)
    scope.order("id DESC")
  end

  def apply_order_with_id_asc(scope)
    scope.order("id ASC")
  end

  def apply_order_with_rand(scope)
    scope.order("RAND()")
  end

  # https://github.com/nettofarah/graphql-query-resolver

  def fetch_results
    # NOTE: Don't run QueryResolver during tests
    return super unless context.present?

    GraphQL::QueryResolver.run(Tour, context, Types::TourType) do
      super
    end
  end
end
