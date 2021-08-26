class DataModel {
  final String country;
  final String newCases;
  final String newDeaths;
  final String newRecovered;

  DataModel.fromJson(Map<String, dynamic> parsedJson)
      : country = parsedJson['Country'],
        newCases = parsedJson['New Cases'],
        newDeaths = parsedJson['New Deaths'],
        newRecovered = parsedJson['New Recovered'];
}
