class Warehouse < ActiveRecord::Base
  has_many :inventories 
   has_many :products, through: :inventories
   
  validates :name, presence: true, 

  uniqueness: {case_sensitive: false}
  
  include Loggable
end
