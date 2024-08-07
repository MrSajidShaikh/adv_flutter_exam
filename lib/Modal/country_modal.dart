class Country {
  final String name;
  final String capital;
  final String region;
  final String flag;

  Country({
    required this.name,
    required this.capital,
    required this.region,
    required this.flag,
  });

  factory Country.fromJson(Map<String, dynamic> m1) {
    return Country(
      name: m1['name']['common'],
      capital: m1['capital'] != null ? m1['capital'][0] : 'No Capital',
      region: m1['region'],
      flag: m1['flags']['png'],
    );
  }

  static List<Country> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((m1) => Country.fromJson(m1)).toList();
  }
}