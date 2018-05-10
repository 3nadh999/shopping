class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :gender
      t.decimal :price_range

      t.timestamps
    end
  end
end
