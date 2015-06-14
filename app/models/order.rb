
class Order < ActiveRecord::Base
  belongs_to :dog
  belongs_to :supplier
  def caluculate_subtotal(price)

    quantity * price 
  end  
end
