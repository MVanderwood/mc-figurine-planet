class Figurine < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  
  SALES_TAX = 0.09
  DISCOUNT_THRESHOLD = 2

  def discount
    if price.to_f <= DISCOUNT_THRESHOLD
      discount_message = "Discount Item!"
    else
      discount_message = "Figurine on Sale!"
    end
  end

  def tax
    (price * SALES_TAX).round(2)

  end

  def price_with_tax
    (price + tax).to_s
  end

end
