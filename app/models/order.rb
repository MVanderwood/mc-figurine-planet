class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :figurine

  SALES_TAX = 0.09

  def subtotal_calc
    subtotal_calc = figurine.price * quantity
  end

  def tax_calc
    tax_calc = subtotal_calc * SALES_TAX
  end

  def total_calc
    total_calc = tax_calc * subtotal_calc
  end  
end
