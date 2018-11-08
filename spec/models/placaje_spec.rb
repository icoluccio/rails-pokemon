require 'rails_helper'

describe Placaje do
  subject(:placaje) do
    described_class.create(pokemon: pokemon)
  end

  let(:pokemon) do
    Pokemon.create(velocidad: 5, vida: 10, ataque: ataque, tipo_pokemon: TipoPokemon.create)
  end
  let(:ataque) do
    1
  end

  it 'hace daño' do
    expect { placaje.atacar(pokemon) }.to(change(pokemon, :vida).by(-1 * ataque))
  end

  it 'no cambia el estado' do
    placaje.atacar(pokemon)
    expect(pokemon.estado).to be_nil
  end
end
