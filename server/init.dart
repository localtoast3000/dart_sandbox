import 'dart:io';

const host = 'localhost';
const port = 8000;

void main() async {
  final requests = await HttpServer.bind(host, port);
  print('Dart server started on $host:$port');

  await for (final request in requests) {
    processRequest(request);
  }
}

void processRequest(HttpRequest request) {
  print('Got request for ${request.uri.path}');

  final response = request.response;

  if (request.uri.path == "/message") {
    response
      ..headers.contentType = ContentType('text', 'plain')
      ..write("This is a message from the dart server");
  } else {
    response.statusCode = HttpStatus.notFound;
  }
  response.close();
}
