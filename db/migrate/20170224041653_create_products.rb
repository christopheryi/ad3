class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.decimal :price
      t.text :description
      t.text :ingredient

      t.timestamps
    end
  end
end
