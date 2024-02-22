class Country {
  late String name;
  late String flagCountry;

  Country(String name, String flagCountry) {
    this.name = name;
    this.flagCountry = flagCountry;
  }
}

List<Country> countryModel() {
  List<Country> countries = [
    Country('English', 'assets/englishflag.png'),
    Country('Japanese', 'assets/japanflag.jpg'),
    Country('French', 'assets/frenchflag.png'),
    Country('German', 'assets/jermanflag.png'),
    Country('Mandarin', 'assets/cinaflag.jpg'),
    Country('Arab', 'assets/arabflag.png'),
  ];
  return countries;
}

