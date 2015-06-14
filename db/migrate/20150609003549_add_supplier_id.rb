class AddSupplierId < ActiveRecord::Migration
  def change
    add_column :dogs, :supplier_id, :integer
    
  end
end
