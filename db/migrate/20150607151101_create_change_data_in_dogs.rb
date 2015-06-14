class CreateChangeDataInDogs < ActiveRecord::Migration
  def change
     change_column :dogs, :description, :text
    end
  end
end
