import 'package:flutter/material.dart';
import 'package:ml_vision_barcode_scan/camera_stream_barcode_scanner.dart';
import 'package:ml_vision_barcode_scan/camera_preview_scanner.dart';
import 'package:ml_vision_barcode_scan/picture_scanner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ml vision demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Ml vision Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
