import "dart:math";

class Dice {
  final int _faces;

  Dice(this._faces);

  void roll() {
    var random = Random();
    var value = random.nextInt(_faces) + 1;
    print('You rolled a $value');
  }

  @override
  String toString() => '$_faces face Dice';
}
