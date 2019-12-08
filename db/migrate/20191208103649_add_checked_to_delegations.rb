class AddCheckedToDelegations < ActiveRecord::Migration[5.2]
  def change
    add_column :delegations, :checked, :boolean, default: false
  end
end
