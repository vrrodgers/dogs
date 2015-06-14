class ChangeDataTypePrice < ActiveRecord::Migration
  def create
    change_column :dogs, :price, :decimal
  end
end
