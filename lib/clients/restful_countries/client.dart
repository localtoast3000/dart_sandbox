import 'dart:convert';

import 'package:dart_sandbox/env.dart';
import 'package:http/http.dart' as http;

class RestfulCountriesClient {
  final _client = http.Client();
  final _baseUri = Uri.https('restfulcountries.com', '/api/v1');
  final _authorizationHeader = {
    'Authorization': 'Bearer ${Env.restfulCountriesApiKey}',
  };

  Uri _appendToBaseUri(
          {String endpoint = '/', Map<String, dynamic>? queryParameters}) =>
      Uri(
          scheme: _baseUri.scheme,
          host: _baseUri.host,
          path: '${_baseUri.path}$endpoint',
          queryParameters: queryParameters);

  Future<dynamic> getAllCountries() async {
    final response =
        await _client.get(_appendToBaseUri(endpoint: "/countries"), headers: {
      ..._authorizationHeader,
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception(
          'Failed to get all countries with status ${response.statusCode}');
    }
  }
}
