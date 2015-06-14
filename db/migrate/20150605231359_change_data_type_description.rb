class ChangeDataTypeDescription < ActiveRecord::Migration
  def create
  change_column :dogs, :description, :text
  end
end
