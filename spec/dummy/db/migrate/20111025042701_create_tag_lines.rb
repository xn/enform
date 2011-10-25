class CreateTagLines < ActiveRecord::Migration
  def change
    create_table :tag_lines do |t|
      t.references :author
      t.string :body

      t.timestamps
    end
    add_index :tag_lines, :author_id
  end
end
