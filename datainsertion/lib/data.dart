class Todo {
  String itemName;

  Todo({this.itemName});

  //to be used when inserting a row in the table
  Map<String, dynamic> toMapWithoutId() {
    final map = new Map<String, dynamic>();
    map["item_name"] = itemName;

    return map;
  }

  Map<String, dynamic> toMap() {
    final map = new Map<String, dynamic>();

    map["item_name"] = itemName;

    return map;
  }

  //to be used when converting the row into object
  factory Todo.fromMap(Map<String, dynamic> data) => new Todo(
        itemName: data['item_name'],
      );
}
