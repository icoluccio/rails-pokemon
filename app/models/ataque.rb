class Ataque < ApplicationRecord
  belongs_to :pokemon

  def nombre
    self.class.to_s.upcase
  end
end
