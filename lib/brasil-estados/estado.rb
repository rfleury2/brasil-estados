module Brasil
	class Estado
    def initialize(sigla_or_nome)
      sigla = to_sigla(sigla_or_nome)
      @nome = estado_mapper[:nome]
      @sigla = estado_mapper[:sigla]
      @capital = estado_mapper[:capital]
      @regiao = estado_mapper[:regiao]
    end



		def self.siglas
      SIGLAS
		end

    def self.nomes
      NOMES
    end
	end

  private 

  def to_sigla(sigla_or_nome)
    if NOMES.any? { |nome| nome.downcase == sigla_or_nome.downcase }
      return sigla_or_nome.upcase 
    elsif NOMES.any? { |nome| nome.downcase == sigla_or_nome.downcase } 
      raise NotImplementedError, "Later"
    else
      raise ArgumentError, "#{sigla_or_nome} is not a valid argument"
    end
  end

  def estado_mapper

  end

  NOMES = ["Acre",
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
    
    SIGLAS = ["AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO"]  
end

# Bandeira	Curtir	Estado	Sigla	Capital	Região
# Bandeira  			AC	Rio Branco	Norte
# Bandeira  			AL	Maceió	Nordeste
# Bandeira  			AP	Macapá	Norte
# Bandeira  			AM	Manaus	Norte
# Bandeira  			BA	Salvador	Nordeste
# Bandeira  			CE	Fortaleza	Nordeste
# Bandeira  		 Federal	DF	Brasília	Centro-Oeste
# Bandeira  		 Santo	ES	Vitória	Sudeste
# Bandeira  			GO	Goiânia	Centro-Oeste
# Bandeira  			MA	São Luís	Nordeste
# Bandeira  		 Grosso	MT	Cuiabá	Centro-Oeste
# Bandeira  		 Grosso do Sul	MS	Campo Grande	Centro-Oeste
# Bandeira  		 Gerais	MG	Belo Horizonte	Sudeste
# Bandeira  			PA	Belém	Norte
# Bandeira  			PB	João Pessoa	Nordeste
# Bandeira  			PR	Curitiba	Sul
# Bandeira  			PE	Recife	Nordeste
# Bandeira  			PI	Teresina	Nordeste
# Bandeira  		 de Janeiro	RJ	Rio de Janeiro	Sudeste
# Bandeira  		 Grande do Norte	RN	Natal	Nordeste
# Bandeira  		 Grande do Sul	RS	Porto Alegre	Sul
# Bandeira  			RO	Porto Velho	Norte
# Bandeira  			RR	Boa Vista	Norte
# Bandeira  		 Catarina	SC	Florianópolis	Sul
# Bandeira  		 Paulo	SP	São Paulo	Sudeste
# Bandeira  			SE	Aracaju	Nordeste
# Bandeira  			TO	Palmas	Norte