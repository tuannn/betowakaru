class City < ActiveRecord::Base
  attr_accessible :name, :description, :string
  
  validates :name, presence:true, uniqueness: true
  
end
