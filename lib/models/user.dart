class User {
  String firstname;
  String lastname;
  String email;

  User(this.firstname, this.lastname, this.email);

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write('{ ');
    buffer.write('firstname: $firstname, ');
    buffer.write('lastname: $lastname, ');
    buffer.write('email: $email ');
    buffer.write('}');
    return buffer.toString();
  }
}
