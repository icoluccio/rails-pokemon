class Pokemon < ApplicationRecord
  has_many :ataques, dependent: :destroy

  validates :ataques, length: { maximum: 4 }
  has_one :status, dependent: :destroy

  def agregar_ataque(ataque)
    ataques << ataque
    save!
  end

  def elegir_ataque
    ataques.sample
  end

  def atacar(otro_pokemon)
    return unless vivo && puedo_atacar

    elegir_ataque.atacar(otro_pokemon)
    afectar_por_estado
  end

  def afectar_por_estado
    return if estado.blank?

    estado.afectar
  end
end
