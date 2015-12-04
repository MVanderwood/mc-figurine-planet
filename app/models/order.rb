class Order < ActiveRecord::Base
  belongs_to :user
  has_many :carted_figurines
  has_many :figurines, through: :carted_figurines

  validates :total, presence: true
  validates :

  SALES_TAX = 0.09

  def subtotal_calc
    subtotal = 0
    carted_figurines.each do |carted_figurine|
      subtotal += carted_figurine.figurine.price * carted_figurine.quantity
    end
    subtotal
  end

  def tax_calc
    tax = subtotal_calc * SALES_TAX
  end

  def total_calc
    total = tax_calc + subtotal_calc
  end  
end
