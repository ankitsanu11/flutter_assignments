import 'package:flutter/material.dart';

class SwipeAction extends StatefulWidget {
  @override
  _SwipeActionState createState() => _SwipeActionState();
}

class _SwipeActionState extends State<SwipeAction> {
  final items = List<String>.generate(10, (i) => "Items ${i + 1}").toList();
  TextEditingController controller = TextEditingController();
  var lists;
  @override
  Widget build(BuildContext context) {
    void show_dialog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              actions: <Widget>[
                MaterialButton(
                  child: Text('add'),
                  onPressed: () {
                    setState(() {
                      if (controller.text.isNotEmpty)
                        items.add(controller.text);
                      controller.text = '';
                    });
                    Navigator.of(context).pop();
                  },
                )
              ],
              content: Container(
                height: 200,
                width: 300,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Add",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe Actions'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            background: Container(
              color: Colors.red,
            ),
            key: UniqueKey(),
            onDismissed: (direction) {
              setState(() {
                lists.removeAt(index);
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$item',
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          show_dialog();
        },
      ),
    );
  }
}
