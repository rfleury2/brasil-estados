# Brasil Estados
Brasil Estados is a Ruby Gem for accessing information about states from Brazil

Brasil Estados e uma Ruby Gem para acessar informacoes sobre estados no Brasil

## Using Brasil Estados

Add brasil-estados to gemfile

```ruby
  gem 'brasil-estados'
```

Then you will have access to the Brasil::Estados helper class.

### Interface

There are class methods that return information regarding all states:

```ruby
  Brasil::Estado.siglas
  # ["AC", "AL", "AP", ... ]

  Brasil::Estado.nomes
  # ["Acre", "Alagoas", "Amapá", ...]

  Brasil::Estado.by_regiao("Norte")
  # Array of Brasil::Estado objects
  # note: .by_regiao is case insensitive
```

You may also create an instance of Brasil::Estados to access information about an individual state:

```ruby
  tocantins = Brasil::Estado.new("TO")

  # tocatins.nome     => "Tocantins"
  # tocatins.sigla    => "TO"
  # tocatins.capital  => "Palmas"
  # tocatins.regiao   => "Norte"

  # note: .new is case insensitive
```

#### English Aliases
| Portuguese | English |
|---|---|
| ```.nomes``` | ```.names``` |
| ```.siglas``` | ```.abbreviations``` |
| ```.by_regiao``` | ```.by_region``` |
| ```#capital``` | ```#capital``` |
| ```#nome``` | ```#name``` |
| ```#regiao``` | ```#region``` |
| ```#sigla``` | ```#abbreviation``` |
 