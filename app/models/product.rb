class Product < ActiveRecord::Base
  belongs_to :admin
  belongs_to :category
  attr_accessible :color, :imagen, :nombre, :precio_especial, :category_id, :precio_mayorista, :precio_publico, :referencia_externa, :referencia_interna, :talla
end
