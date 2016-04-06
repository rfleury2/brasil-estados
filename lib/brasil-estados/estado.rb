module Brasil
  class Estado
    attr_reader :nome, :sigla, :capital, :regiao

    def initialize(sigla)
      map_estado(sigla.to_sym)
    end

    def self.siglas
      ["AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO"]
    end

    def self.nomes 
      ["Acre",
      "Alagoas",
      "Amapá",
      "Amazonas",
      "Bahia",
      "Ceará",
      "Distrito Federal",
      "Espírito Santo",
      "Goiás",
      "Maranhão",
      "Mato Grosso",
      "Mato Grosso do Sul",
      "Minas Gerais",
      "Pará",
      "Paraíba",
      "Paraná",
      "Pernambuco",
      "Piauí",
      "Rio de Janeiro",
      "Rio Grande do Norte",
      "Rio Grande do Sul",
      "Rondônia",
      "Roraima",
      "Santa Catarina",
      "São Paulo",
      "Sergipe",
      "Tocantins"]
    end

    private 

    def map_estado(sigla)
      estado = mapper[sigla]
      @nome = estado[:nome]
      @capital = estado[:capital]
      @regiao = estado[:regiao]
      @sigla = sigla.to_s
    end

    def mapper
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
end
