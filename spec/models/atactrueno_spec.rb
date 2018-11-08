require 'rails_helper'

describe Atactrueno do
  subject(:atactrueno) do
    described_class.create(pokemon: pokemon)
  end

  let!(:pokemon) do
    Pokemon.create(velocidad: 5, vida: 10, tipo_pokemon: TipoPokemon.create)
  end

  it 'hace daño' do
    atactrueno.atacar(pokemon)
    expect(pokemon.vida).to eq(5)
  end

  context 'cuando da true el random' do
    it 'cambia el estado a paralizado' do
      allow(atactrueno).to receive(:deberia_paralizar).and_return(true)
      atactrueno.atacar(pokemon)
      expect(pokemon.estado.class).to be Paralizado
    end
  end

  context 'cuando da false el random' do
    it 'cambia el estado a paralizado' do
      allow(atactrueno).to receive(:deberia_paralizar).and_return(false)
      atactrueno.atacar(pokemon)
      expect(pokemon.estado).to be_nil
    end
  end
end
