class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.text :ingredients
      t.text :benefits
      t.references :supplier, null: false, foreign_key: true
      t.references :product_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
