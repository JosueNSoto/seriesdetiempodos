import 'package:flutter/material.dart';
import 'tablas.dart';
import 'package:flutter/services.dart';
import 'Operaciones/Operaciones.dart';

class mainMenu extends StatefulWidget {
  @override
  State<mainMenu> createState() => _mainMenuState();
}

class _mainMenuState extends State<mainMenu> {
  //Variables ingresadas por el usuario
  final anoInicial = TextEditingController();
  final demandaInicial = TextEditingController();

  String anoIni = '';
  String demIni = '';

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
              Text("Ingrese el año de inicio"),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 200),
                child: TextFormField(
                  controller: anoInicial,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    final intNumber = int.tryParse("0");
                    if (intNumber != null && intNumber <= 4) {
                      return "no digas mamadas";
                    }
                    return "Ingrese un número";
                  },
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    hintText: "Ejemplo: 2012",
                    hintStyle: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("Ingrese la demanda inicial"),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 200),
                child: TextFormField(
                  controller: demandaInicial,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  validator: (value) {
                    final intNumber = int.tryParse("0");
                    if (intNumber != null && intNumber <= 7) {
                      return "no digas mamadas";
                    }
                    return "Ingrese un número";
                  },
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    hintText: "Ejempo: 7000",
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
                  //Pasar valores a variables
                  anoIni = anoInicial.text;
                  demIni = demandaInicial.text;
                  //Pasar valores a tipo double
                  double numAnoIni = double.parse(anoIni);
                  double numDemIni = double.parse(demIni);
                  //double resultado = numAnoIni + numDemIni;
                  //print(resultado);
                  //Pasar valores a variables para utilizar después :P
                  guardarNum(numAnoIni, numDemIni);
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
