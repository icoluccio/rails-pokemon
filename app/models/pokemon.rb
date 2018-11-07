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

  def vivo?
    vida.positive?
  end

  def puedo_atacar?
    return true if estado.blank?

    estado.puedo_atacar?
  end

  def atacar(otro_pokemon)
    return unless vivo? && puedo_atacar?

    elegir_ataque.atacar(otro_pokemon)
    afectar_por_estado
  end

  def afectar_por_estado
    return if estado.blank?

    estado.afectar
  end

  def cambiar_estado(estado)
    self.estado = estado
    save!
  end

  def recibir_danio(danio)
    self.vida -= [0, danio - (defensa / 10)].min
  end
end
