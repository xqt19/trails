class AddCustomToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :custom, :boolean, default: false
  end
end
