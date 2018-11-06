class Batalla < ApplicationRecord
  belongs_to :entrenador1, class_name: 'Entrenador'
  belongs_to :entrenador2, class_name: 'Entrenador'

  def hacer_batalla; end
end
