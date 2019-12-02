class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.time :start_time
      t.time :end_time
      t.string :name, null: false, default: "My Activity"
      t.text :description
      t.string :location
      t.references :trail, foreign_key: true

      t.timestamps
    end
  end
end
