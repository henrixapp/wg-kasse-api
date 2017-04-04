class Author < ApplicationRecord
  has_many :billing_items, foreign_key: :author_id, class_name: 'BillingItem'
end
