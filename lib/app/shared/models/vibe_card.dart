import 'dart:ui';

class VibeCard{
  String _nome;
  Color _color;

  VibeCard(this._nome, this._color);

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  Color get color => _color;

  set color(Color value) {
    _color = value;
  }


}