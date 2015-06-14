class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :NameEmail
      t.string :Phone

      t.timestamps null: false
    end
  end
end
