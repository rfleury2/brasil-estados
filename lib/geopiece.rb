class Geopiece
  AVAILABLE_COUNTRIES = ["USA"]

  def self.load_country(country_code)
    country_code = country_code.upcase
    if is_available?(country_code)
      require "geopiece/#{country_code}/#{country_code.downcase.capitalize}.rb"
    else
      raise ArgumentError, 'Country code is unavailable'
    end
  end

  private

  def self.is_available?(country_code)
    AVAILABLE_COUNTRIES.any? do |country| 
      country == country_code
    end      
  end
end