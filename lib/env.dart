import 'package:dotenv/dotenv.dart';

class Env {
  static final DotEnv _env = DotEnv(includePlatformEnvironment: true)..load();

  static final String restfulCountriesApiKey =
      _env['RESTFUL_COUNTRIES_API_KEY'] ?? '';
}
