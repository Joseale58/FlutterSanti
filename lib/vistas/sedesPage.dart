import 'package:flutter/material.dart';
import 'package:flutter_application_1/vistas/myHomePage.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';

class SedesPage extends StatefulWidget {
  const SedesPage({Key? key}) : super(key: key);

  @override
  State<SedesPage> createState() => _SedesPageState();
}

double screenheight = 0.0;
double screenwidth = 0.0;

class _SedesPageState extends State<SedesPage> {
  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: screenwidth,
          height: screenheight,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 224, 232, 235),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Sedes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  ),
                ),
                SizedBox(height: 42),
                ubicacion("Carrera 63B", "Laureles", "laureles.png"),
                ubicacion("Avenida amador", "Cisneros", "cisneros.png"),
                ubicacion("Carrera 63B", "Laureles", "laureles.png"),
                ubicacion("Avenida amador", "Cisneros", "cisneros.png"),
                ubicacion("Carrera 63B", "Laureles", "laureles.png"),
                ubicacion("Avenida amador", "Cisneros", "cisneros.png"),
                cambiaPagina(context, MyWidget(), "Volver")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
