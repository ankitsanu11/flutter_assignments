class Note {
  int _id;
  String _name;
  int _price;
  Note(this._name, this._price);
  Note.withId(this._id, this._name, this._price);
  int get id => _id;
  String get name => _name;
  int get price => _price;
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['name'] = _name;
    map['price'] = _price;
    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
  }
}
