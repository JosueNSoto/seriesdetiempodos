import 'package:flutter/material.dart';

class tablas extends StatefulWidget {
  @override
  State<tablas> createState() => _tablasState();
}

class _tablasState extends State<tablas> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 70, right: 70, top: 20, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.exit_to_app,
                    color: Colors.blue,
                    size: 24.0,
                  ),
                ),
              ),
              Text("Hola")
            ],
          ),
        ),
      ),
    );
  }
}
