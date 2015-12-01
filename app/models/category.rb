class Category < ActiveRecord::Base
  has_many :categorized_figurines
  has_many :figurines, through: :categorized_figurines
end
