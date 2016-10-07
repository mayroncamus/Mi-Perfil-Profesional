class Product < ActiveRecord::Base
  belongs_to :category
  
  has_many :inventories 
  has_many :warehouses, through: :inventories
  
  validates :name, presence: true, 

  uniqueness: {case_sensitive: false} 

  validates :category, presence: true
  
  include Loggable
end

def category_name    
  self.category.name  
end