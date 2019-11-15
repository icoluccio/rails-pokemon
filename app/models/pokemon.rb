class Pokemon < ApplicationRecord
  has_many :ataques, dependent: :destroy

  validates :ataques, length: { maximum: 4 }
  has_one :estado, dependent: :destroy
  belongs_to :tipo_pokemon, dependent: :destroy

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

  def atacar(otro_pokemon, ataque = nil)
    return unless vivo? && puedo_atacar?
    ataque = elegir_ataque if ataque.blank?
    ataque.atacar(otro_pokemon)
    estado.afectar if estado.present?
    "#{tipo_pokemon.nombre} usó #{ataque.type} y le hizo #{ataque.danio} puntos a #{otro_pokemon.tipo_pokemon.nombre}"
  end

  def cambiar_estado(estado)
    update(estado: estado)
  end

  def recibir_danio(danio)
    self.vida -= [0, danio - (defensa / 10)].max
    save!
  end

  def vida_maxima
    50
  end
end
