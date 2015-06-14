class Dog < ActiveRecord::Base
  belongs_to :supplier  
  has_many :images
  has_many :orders  
  def discount
    return "Discount Item"
  end
  def sale
    return "On sale"
  end
  def sale_message

    if price.to_i < 8.00
      
      return discount
    else 
      return sale
    end 
  end   
  
  def tax 
    return price.to_i * 0.09
  end  
  def sales_tax 
    return tax 
  end

    def total
     return price.to_i + tax
    end 
    def sales_total
      return total
    end  
  def in_stock
   return "In Stock"
  end
  def out_of_stock
    return "Out Of Stock"
  end
  def current_inventory
    if inventory.to_i > 0
      return in_stock
    else 
      return out_of_stock
    end
  end 
end
