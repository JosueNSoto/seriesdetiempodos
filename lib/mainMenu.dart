import 'package:flutter/material.dart';
import 'tablas.dart';

class mainMenu extends StatefulWidget {
  @override
  State<mainMenu> createState() => _mainMenuState();
}

class _mainMenuState extends State<mainMenu> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 35, right: 35, top: 20),
          child: Column(
            children: [
              Text(
                'Series de tiempo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20),
              Text("Coloque la informacion solicitada"),
              SizedBox(height: 10),
              Text("Ingrese el ano de inicio"),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 200),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    //final intNumber = int.tryParse(value);
                  },
                  decoration: InputDecoration(
                    hintText: "2012",
                    hintStyle: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("Ingrese la demanda"),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 200),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "7000",
                    hintStyle: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => tablas(),
                    ),
                  );
                },
                child: Text("Generar Series de Tiempo"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
