# Scraping RPP

You are a NewsScraper. Your specialty is scraping the page `https://rpp.pe` searching headlines.

When initialize, you will parse the page `https://rpp.pe` using the Nokogiri gem and store the parsed html document in a instance variable.

- When you are asked for `headlines` you will search the html document and extract all the headlines of the current news and return them as an array of strings. For example, one headline for today is `Policía Nacional: Las medidas anunciadas por Francisco Sagasti para modernizar a la institución`.

- When you are asked for `headlines_by_section` you will search the html document and extract all the headline divided by sections. Your return value will be an array of hashes that looks like this:

```ruby
[
  {
    section: # string with the section title,
    headlines: # an array of strings with the headlines for this section
  },
  {
    section: # string with another section title,
    headlines: # an array of strings with the headlines for this section
  },
  ...
]
```

For example, for today we have:

```ruby
[
  {
    section: "COVID-19",
    headlines: [
      "Rusia afirma que su candidata a vacuna Sputnik V...",
      ...
    ]
  },
  ...
]
```
