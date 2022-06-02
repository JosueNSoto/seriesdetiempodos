import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class tablas extends StatefulWidget {
  @override
  State<tablas> createState() => _tablasState();
}

class _tablasState extends State<tablas> {
  final sigDemanda = TextEditingController();

  String sigDemandaNum = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 70, right: 70, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              //color: Color.fromARGB(255, 29, 130, 161),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ingrese la demanda del año siguiente:",
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.exit_to_app,
                        color: Colors.blue,
                        size: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    TextFormField(
                      controller: sigDemanda,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        final valueDemanda = int.tryParse('0');
                        if (valueDemanda != null && valueDemanda <= 4) {
                          return "no digas mamadas";
                        }
                        return "Ingrese un número";
                      },
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        hintText: "Ejemplo: 7500",
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    print("Ejecutado con éxito");
                    //Pasar valores a variabkles
                    sigDemandaNum = sigDemanda.text;
                    //Pasar valores a tipo double
                    double numDemanda = double.parse(sigDemandaNum);
                    print(numDemanda);
                  },
                  child: Text("Agregar demanda"),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: Center(
                  child: Table(
                    border: TableBorder.symmetric(
                      inside: BorderSide(width: 1, color: Colors.blue),
                    ),
                    children: [
                      TableRow(
                        children: [
                          Text("Año (x)", textAlign: TextAlign.center),
                          Text("Demanda (y)", textAlign: TextAlign.center),
                          Text("x", textAlign: TextAlign.center),
                          Text("xy", textAlign: TextAlign.center),
                          Text("χ²", textAlign: TextAlign.center),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text("2021", textAlign: TextAlign.center),
                          Text("7000", textAlign: TextAlign.center),
                          Text("x", textAlign: TextAlign.center),
                          Text("xy", textAlign: TextAlign.center),
                          Text("χ²", textAlign: TextAlign.center),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text("2022", textAlign: TextAlign.center),
                          Text("7000", textAlign: TextAlign.center),
                          Text("x", textAlign: TextAlign.center),
                          Text("xy", textAlign: TextAlign.center),
                          Text("χ²", textAlign: TextAlign.center),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
