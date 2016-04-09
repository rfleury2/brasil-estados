require 'rspec'
require_relative '../../lib/brasil-estados/estado'

RSpec.describe Brasil::Estado do
  context 'class methods' do
    it ".siglas returns an array of siglas" do
      expect(Brasil::Estado.siglas).to eq ["AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO"]
    end

    it ".nomes returns an array of nomes" do
      expect(Brasil::Estado.nomes).to eq ["Acre", "Alagoas", "Amapá", "Amazonas", "Bahia", "Ceará", "Distrito Federal", "Espírito Santo", "Goiás", "Maranhão", "Mato Grosso", "Mato Grosso do Sul", "Minas Gerais", "Pará", "Paraíba", "Paraná", "Pernambuco", "Piauí", "Rio de Janeiro", "Rio Grande do Norte", "Rio Grande do Sul", "Rondônia", "Roraima", "Santa Catarina", "São Paulo", "Sergipe", "Tocantins"]
    end

    context "English" do
      it ".abbreviations returns an array of siglas" do
        expect(Brasil::Estado.abbreviations).to eq ["AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO"]
      end

      it ".names returns an array of nomes" do
        expect(Brasil::Estado.names).to eq ["Acre", "Alagoas", "Amapá", "Amazonas", "Bahia", "Ceará", "Distrito Federal", "Espírito Santo", "Goiás", "Maranhão", "Mato Grosso", "Mato Grosso do Sul", "Minas Gerais", "Pará", "Paraíba", "Paraná", "Pernambuco", "Piauí", "Rio de Janeiro", "Rio Grande do Norte", "Rio Grande do Sul", "Rondônia", "Roraima", "Santa Catarina", "São Paulo", "Sergipe", "Tocantins"]
      end      
    end

    context '.by_regiao' do
      let(:estados_in_sul)           { Brasil::Estado.by_regiao("Sul") }
      let(:estados_in_sudeste)       { Brasil::Estado.by_regiao("Sudeste") }
      let(:estados_in_centro_oeste)  { Brasil::Estado.by_regiao("Centro-Oeste") }
      let(:estados_in_norte)         { Brasil::Estado.by_regiao("Norte") }
      let(:estados_in_nordeste)      { Brasil::Estado.by_regiao("Nordeste") }

      it 'returns Brasil::Estado objects for Sul' do
        expect(estados_in_sul.length).to eq 3
        expect(estados_in_sul.sample).to be_a Brasil::Estado
        expect(estados_in_sul.map(&:sigla)).to eq ["PR", "RS", "SC"]
      end

      it 'returns Brasil::Estado objects for Sudeste' do
        expect(estados_in_sudeste.length).to eq 4
        expect(estados_in_sudeste.sample).to be_a Brasil::Estado
        expect(estados_in_sudeste.map(&:sigla)).to eq ["ES", "MG", "RJ", "SP"]
      end

      it 'returns Brasil::Estado objects for Norte' do
        expect(estados_in_norte.length).to eq 7
        expect(estados_in_norte.sample).to be_a Brasil::Estado
        expect(estados_in_norte.map(&:sigla)).to eq ["AC", "AP", "AM", "PA", "RO", "RR", "TO"]
      end

      it 'returns Brasil::Estado objects for Nordeste' do
        expect(estados_in_nordeste.length).to eq 9
        expect(estados_in_nordeste.sample).to be_a Brasil::Estado
        expect(estados_in_nordeste.map(&:sigla)).to eq ["AL", "BA", "CE", "MA", "PB", "PE", "PI", "RN", "SE"]
      end

      it 'returns Brasil::Estado objects for Centro-Oeste' do
        expect(estados_in_centro_oeste.sample).to be_a Brasil::Estado
        expect(estados_in_centro_oeste.length).to eq 4
        expect(estados_in_centro_oeste.map(&:sigla)).to eq ["DF", "GO", "MT", "MS"]
      end
    end
  end

  context 'estados' do
    let(:acre)      { Brasil::Estado.new("AC") }
    let(:tocantins) { Brasil::Estado.new("TO") }
    let(:sao_paulo) { Brasil::Estado.new("SP") }

    it 'initializer is case insensitive' do
      expect(Brasil::Estado.new('ac').sigla).to eq acre.sigla
      expect(Brasil::Estado.new('aC').sigla).to eq acre.sigla
      expect(Brasil::Estado.new('Ac').sigla).to eq acre.sigla
    end

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