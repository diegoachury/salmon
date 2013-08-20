class Company < ActiveRecord::Base
  belongs_to :admin
  attr_accessible :nombre
end
