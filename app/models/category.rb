class Category < ActiveRecord::Base
  belongs_to :admin
  has_many :products
  attr_accessible :nombre, :referencia
end
