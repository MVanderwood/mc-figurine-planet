class Figurine < ActiveRecord::Base
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
    (price.to_f * SALES_TAX).round(2)

  end

  def price_with_tax
    (price.to_f + tax).to_s
  end

end
