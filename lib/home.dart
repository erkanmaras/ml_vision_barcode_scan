import 'package:flutter/material.dart';
import 'package:ml_vision_barcode_scan/camera_stream_barcode_scanner.dart';
import 'package:ml_vision_barcode_scan/camera_preview_scanner.dart';
import 'package:ml_vision_barcode_scan/picture_scanner.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Camera Stream Barcode Scanner"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BarcodeScanner()),
                );
              },
            ),
            RaisedButton(
              child: Text("Camera Preview Scanner"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CameraPreviewScanner()),
                );
              },
            ),
            RaisedButton(
              child: Text("Picture Scanner"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PictureScanner()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
