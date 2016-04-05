require 'rspec'
require_relative '../../lib/brasil-estados/estado'

RSpec.describe Brasil::Estado do
  context '.siglas' do
    it "returns an array of siglas" do
      expect(Brasil::Estado.siglas).to eq ["AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO"]
    end
  end

  context '.nomes' do
    it "returns an array of nomes" do
      expect(Brasil::Estado.nomes).to eq ["Acre", "Alagoas", "Amapá", "Amazonas", "Bahia", "Ceará", "Distrito Federal", "Espírito Santo", "Goiás", "Maranhão", "Mato Grosso", "Mato Grosso do Sul", "Minas Gerais", "Pará", "Paraíba", "Paraná", "Pernambuco", "Piauí", "Rio de Janeiro", "Rio Grande do Norte", "Rio Grande do Sul", "Rondônia", "Roraima", "Santa Catarina", "São Paulo", "Sergipe", "Tocantins"]
    end
  end

  context 'estados' do
    let(:acre)      { Brasil::Estado.new("AC") }
    let(:tocantins) { Brasil::Estado.new("TO") }
    let(:sao_paulo) { Brasil::Estado.new("SP") }

    it '#nome returns proper nome' do
      expect(acre.nome).to eq "Acre"
      expect(tocantins.nome).to eq "Tocantins"
      expect(sao_paulo.nome).to eq "São Paulo"
    end

    it '#capital returns proper capital' do
      expect(acre.capital).to eq "Rio Branco"
      expect(tocantins.capital).to eq "Palmas"
      expect(sao_paulo.capital).to eq "São Paulo"
    end

    it '#regiao returns proper regiao' do
      expect(acre.regiao).to eq "Norte"
      expect(tocantins.regiao).to eq "Norte"
      expect(sao_paulo.regiao).to eq "Sudeste"
    end

    it '#sigla returns proper sigla' do
      expect(acre.sigla).to eq "AC"
      expect(tocantins.sigla).to eq "TO"
      expect(sao_paulo.sigla).to eq "SP"
    end

    context 'english' do
      it '#name returns proper nome' do
        expect(acre.name).to eq "Acre"
        expect(tocantins.name).to eq "Tocantins"
        expect(sao_paulo.name).to eq "São Paulo"
      end

      it '#region returns proper regiao' do
        expect(acre.region).to eq "Norte"
        expect(tocantins.region).to eq "Norte"
        expect(sao_paulo.region).to eq "Sudeste"
      end

      it '#abbreviation returns proper sigla' do
        expect(acre.abbreviation).to eq "AC"
        expect(tocantins.abbreviation).to eq "TO"
        expect(sao_paulo.abbreviation).to eq "SP"
      end      
    end
  end
end