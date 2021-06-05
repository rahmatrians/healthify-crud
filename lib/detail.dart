import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  List list;
  int index;
  Detail({this.list, this.index});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("${widget.list[widget.index]['item_name']}"),
        ),
        body: new Container(
          padding: EdgeInsets.all(5),
          child: new Card(
            child: new Center(
              child: new Column(
                children: [
                  new Text(widget.list[widget.index]['item_name']),
                  new Text("Code : ${widget.list[widget.index]['item_code']}"),
                  new Text("Price : ${widget.list[widget.index]['price']}"),
                  new Text("Stock : ${widget.list[widget.index]['stock']}"),
                  new Padding(padding: EdgeInsets.only(top: 30)),
                  new Row(
                    children: [
                      new RaisedButton(
                        child: new Text("EDIT"),
                        onPressed: () {},
                      ),
                      new RaisedButton(
                        child: new Text("EDIT"),
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
