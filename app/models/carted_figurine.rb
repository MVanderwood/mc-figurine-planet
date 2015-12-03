class CartedFigurine < ActiveRecord::Base
  belongs_to :figurine
  belongs_to :user
  belongs_to :order
end
