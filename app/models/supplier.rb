class Supplier < ActiveRecord::Base
  has_many :dogs
  has_many :images
end
