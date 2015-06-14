class RemoveImageFromDogs < ActiveRecord::Migration
  def change
    remove_column :dogs, :image, :string
  end
end
