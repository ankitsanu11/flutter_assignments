import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CameraState();
  }
}

class CameraState extends State<Camera> {
  File image;
  picker() async {
    print('Picker is called');

    File img = await ImagePicker.pickImage(source: ImageSource.camera);
    if (img != null) {
      image = img;
      print(img.path);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('image'),
      ),
      body: Container(
        child: Center(
          child: image == null ? Text('No Image to show') : Image.file(image),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: picker,
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
