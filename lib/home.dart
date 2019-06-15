import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State{
  String result = "Hey there!";
 Future _scanBarcode() async{
   try {
     String bResult = await BarcodeScanner.scan();
     setState(() {
       result = bResult;
     });
   } catch (e) {
   }
 }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Barcode App Test"),
      ),
      body: Center(
        child: Text(this.result, style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),)
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.camera_alt),
        label: Text("Scan"),
        onPressed: _scanBarcode,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
  }

}
