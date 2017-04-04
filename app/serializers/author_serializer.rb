class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :billing_items
end
