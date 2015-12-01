class CategorizedFigurine < ActiveRecord::Base
  belongs_to :category
  belongs_to :figurine
end
