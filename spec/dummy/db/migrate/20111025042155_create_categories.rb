class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :post
      t.string :name

      t.timestamps
    end
    add_index :categories, :post_id
  end
end
