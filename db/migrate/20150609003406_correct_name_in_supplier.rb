class CorrectNameInSupplier < ActiveRecord::Migration
  def change
    add_column :suppliers, :name, :string
    add_column :suppliers, :email, :string
    remove_column :suppliers, :nameemail
  end
end
