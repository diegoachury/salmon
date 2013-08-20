class Customer < ActiveRecord::Base
  belongs_to :admin
  attr_accessible :ciudad, :direccion, :email, :nombre, :telefono, :telefono2
end
