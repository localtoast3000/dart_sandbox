import 'package:dart_sandbox/clients/restful_countries/restful_countries.dart';

void main() async {
  final restfulCountriesClient = RestfulCountriesClient();

  final countries = await restfulCountriesClient.getAllCountries();

  print(countries);
}
