module Brasil
  class Estado
    attr_reader :nome, :sigla, :capital, :regiao

    def initialize(sigla)
      map_estado(sigla.to_sym)
    end

    def self.siglas
      ESTADOS.keys.map(&:to_s)
    end

    def self.nomes 
      ESTADOS.values.map { |estado| estado[:nome] }
    end

    # English aliases
    class <<self  
      alias_method :names,          :nomes
      alias_method :abbreviations,  :siglas
    end  
    alias_method :region,       :regiao
    alias_method :name,         :nome
    alias_method :region,       :regiao
    alias_method :abbreviation, :sigla

    private 

    def map_estado(sigla)
      estado = ESTADOS[sigla]
      @nome = estado[:nome]
      @capital = estado[:capital]
      @regiao = estado[:regiao]
      @sigla = sigla.to_s
    end

    ESTADOS = 
      {
        AC: {
          nome: "Acre", capital: "Rio Branco", regiao: "Norte" },
        AL: {
          nome: "Alagoas", capital: "Maceió", regiao: "Nordeste" },
        AP: {
          nome: "Amapá", capital: "Macapá", regiao: "Norte" },
        AM: {
          nome: "Amazonas", capital: "Manaus", regiao: "Norte" },
        BA: {
          nome: "Bahia", capital: "Salvador" , regiao: "Nordeste" },
        CE: {
          nome: "Ceará", capital: "Fortaleza", regiao: "Nordeste" },
        DF: {
          nome: "Distrito Federal", capital: "Brasília", regiao: "Centro-Oeste" },
        ES: {
          nome: "Espírito Santo", capital: "Vitória", regiao: "Sudeste" },
        GO: {
          nome: "Goiás", capital: "Goiânia", regiao: "Centro-Oeste" },
        MA: {
          nome: "Maranhão", capital: "São Luís", regiao: "Nordeste" },
        MT: {
          nome: "Mato Grosso", capital: "Cuiabá", regiao: "Centro-Oeste" },
        MS: {
          nome: "Mato Grosso do Sul", capital: "Campo Grande", regiao: "Centro-Oeste" },
        MG: {
          nome: "Minas Gerais", capital: "Belo Horizonte", regiao: "Sudeste" },
        PA: {
          nome: "Pará", capital: "Belém", regiao: "Norte" },
        PB: {
          nome: "Paraíba", capital: "João Pessoa", regiao: "Nordeste" },
        PR: {
          nome: "Paraná", capital: "Curitiba", regiao: "Sul" },
        PE: {
          nome: "Pernambuco", capital: "Recife", regiao: "Nordeste" },
        PI: {
          nome: "Piauí", capital: "Teresina", regiao: "Nordeste" },
        RJ: {
          nome: "Rio de Janeiro", capital: "Rio de Janeiro", regiao: "Sudeste" },
        RN: {
          nome: "Rio Grande do Norte", capital: "Natal", regiao: "Nordeste" },
        RS: {
          nome: "Rio Grande do Sul", capital: "Porto Alegre", regiao: "Sul" },
        RO: {
          nome: "Rondônia", capital: "Porto Velho", regiao: "Norte" },
        RR: {
          nome: "Roraima", capital: "Boa Vista", regiao: "Norte" },
        SC: {
          nome: "Santa Catarina", capital: "Florianópolis", regiao: "Sul" },
        SP: {
          nome: "São Paulo", capital: "São Paulo", regiao: "Sudeste" },
        SE: {
          nome: "Sergipe", capital: "Aracaju", regiao: "Nordeste" },
        TO: {
          nome: "Tocantins", capital: "Palmas", regiao: "Norte" }
      }
  end
end
