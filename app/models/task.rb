class Task < ActiveRecord::Base
  belongs_to :admin
  belongs_to :user
  attr_accessible :descripcion, :fecha_final, :fecha_inicia, :nombre, :user_id
end
