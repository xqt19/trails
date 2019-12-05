class RemoveNullAndDefaultFromNames < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:trails, :name, from: "", to: nil)
    change_column_default(:activities, :name, from: "", to: nil)
    change_column_default(:lists, :name, from: "", to: nil)
    change_column_default(:items, :name, from: "", to: nil)
    change_column_null(:trails, :name, from: false, to: true)
    change_column_null(:activities, :name, from: false, to: true)
    change_column_null(:lists, :name, from: false, to: true)
    change_column_null(:items, :name, from: false, to: true)
  end
end
