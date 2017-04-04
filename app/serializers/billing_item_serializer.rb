class BillingItemSerializer < ActiveModel::Serializer
  attributes :id, :price, :title, :created_at
  belongs_to :author
end
