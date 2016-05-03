require_relative 'estado_mapper'

module Brasil
  include EstadoMapper

  class Estado
    attr_reader :nome, :sigla, :capital, :regiao

    def initialize(sigla)
      map_estado(sigla.upcase.to_sym)
    end

    def self.siglas
      EstadoMapper::ESTADOS.keys.map(&:to_s)
    end

    def self.nomes 
      EstadoMapper::ESTADOS.values.map { |estado| estado[:nome] }
    end

    def self.by_regiao(regiao)
      estados = []
      EstadoMapper::ESTADOS.each_pair do |sigla, estado| 
        if estado[:regiao] == sanitize(regiao)
          estados << Brasil::Estado.new(sigla)
        end
      end

      raise ArgumentError, "Not a valid regiao" if estados.empty?
      estados
    end

    # English aliases
    class <<self  
      alias_method :names,          :nomes
      alias_method :abbreviations,  :siglas
      alias_method :by_region,      :by_regiao
    end  
    alias_method :region,       :regiao
    alias_method :name,         :nome
    alias_method :region,       :regiao
    alias_method :abbreviation, :sigla

    private 

    def self.valid_info?(info_requested)
      !info_requested || self.instance_methods.include?(info_requested.to_sym)
    end

    def self.sanitize(regiao)
      regiao.downcase.capitalize.sub("-o", "-O")
    end

    def map_estado(sigla)
      estado = EstadoMapper::ESTADOS[sigla]
      @nome = estado[:nome]
      @capital = estado[:capital]
      @regiao = estado[:regiao]
      @sigla = sigla.to_s
    end
  end
end
