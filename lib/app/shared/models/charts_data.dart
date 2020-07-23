class ChartsData{
  int _id;
  int _value;

  ChartsData(this._id, this._value);

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  int get value => _value;

  set value(int value) {
    _value = value;
  }
}