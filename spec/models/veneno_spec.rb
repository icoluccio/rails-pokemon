require 'rails_helper'

describe Veneno do
  subject(:veneno) do
    described_class.create(pokemon: pokemon)
  end

  let!(:pokemon) do
    Pokemon.create(velocidad: 5, vida: 10, tipo_pokemon: TipoPokemon.create)
  end

  it 'no hace daño' do
    expect { veneno.atacar(pokemon) }.not_to(change(pokemon, :vida))
  end

  it 'cambia el estado a envenenado' do
    veneno.atacar(pokemon)
    expect(pokemon.estado.class).to be Envenenado
  end
end
