class CreateBillingItems < ActiveRecord::Migration[5.0]
  def change
    create_table :billing_items do |t|
      t.string :title
      t.decimal :price, precision: 5, scale: 2
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
