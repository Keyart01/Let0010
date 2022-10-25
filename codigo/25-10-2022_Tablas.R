



partidos |> 
  mutate(Date = dmy(Date))

filter(partidos, year(Date) >= 2010)

mutate(partidos, anio == year(Date))


#Traducir los nombres de los paises

paises <- filter(gapminder, year == 2002)

paises |> 
  mutate(pais = countrycode(sourcevar = country,
                            origin = "country.name",
                            destination = "cldr.name.es"),
         .after = country) |> 
  select(country, pais, continent)

menos |> 
  mutate(region = countrycode(sourcevar = country,
                              origin = "country.name",
                              destination = "region23"))












