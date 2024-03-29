class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name, null: false, default: "My List"
      t.references :trail, foreign_key: true

      t.timestamps
    end
  end
end
