class RenameColumnInImageTable < ActiveRecord::Migration
  def change
    rename_column :images, :product_id, :dog_id
  end
end
