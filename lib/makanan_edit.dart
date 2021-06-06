import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './main.dart';

class MakananEdit extends StatefulWidget {
  final List list;
  final int index;

  MakananEdit({this.list, this.index});

  @override
  _MakananEditState createState() => _MakananEditState();
}

class _MakananEditState extends State<MakananEdit> {
  TextEditingController controllerName;
  TextEditingController controllerDesc;

  void editData() {
    http.post(Uri.parse("http://10.0.2.2/healthify/editdata.php"), body: {
      "id": widget.list[widget.index]['id'],
      "item_name": controllerDesc.text,
    });
  }

  @override
  void initState() {
    controllerCode = controllerCode =
        new TextEditingController(text: widget.list[widget.index]['item_code']);
    controllerName =
        new TextEditingController(text: widget.list[widget.index]['item_name']);
    controllerPrice =
        new TextEditingController(text: widget.list[widget.index]['price']);
    controllerStock =
        new TextEditingController(text: widget.list[widget.index]['stock']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("EDIT DATA"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              new Column(
                children: [
                  new TextField(
                    controller: controllerName,
                    decoration: new InputDecoration(
                        hintText: "Nama Makanan", labelText: "Nama Makanan"),
                  ),
                  new TextField(
                    controller: controllerDesc,
                    decoration: new InputDecoration(
                        hintText: "Keterangan", labelText: "Keterangan"),
                  ),
                  new Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  new RaisedButton(
                      child: Text("Simpan"),
                      onPressed: () {
                        AddingData();
                        Navigator.pop(context);
                      })
                ],
              ),
            ],
          ),
        ));
  }
}
