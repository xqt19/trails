class AddCheckedToListItems < ActiveRecord::Migration[5.2]
  def change
    add_column :list_items, :checked, :boolean, default: false
  end
end
