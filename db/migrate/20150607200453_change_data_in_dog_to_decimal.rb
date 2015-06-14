class ChangeDataInDogToDecimal < ActiveRecord::Migration
  def change
  change_column :dogs, :price, :decimal, :precision => 10, :scale => 2
  end
end
