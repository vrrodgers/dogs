class AddInventoryToDogs < ActiveRecord::Migration
  def change
    add_column  :dogs, :inventory, :integer

  end
end
