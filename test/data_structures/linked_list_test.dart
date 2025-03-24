import 'package:dart_sandbox/data_structures/data_structures.dart';
import 'package:dart_sandbox/models/models.dart';
import 'package:test/test.dart';

void main() {
  final userList = buildUserList();
  test('Checks every list item is an instance of the User model', () {
    userList.traverse((node) {
      expect(node.data.runtimeType, equals(User));
      return null;
    });
  });
}
