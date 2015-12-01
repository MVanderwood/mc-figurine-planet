class Figurine < ActiveRecord::Base
  belongs_to :user
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :categorized_figurines
  has_many :categories, through: :categorized_figurines
  
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