class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer :imageable_id
      t.string :imageable_type
      t.string :picture
      t.text :caption

      t.timestamps
    end

    add_index :images, :imageable_id
    add_index :images, :imageable_type
  end
end
