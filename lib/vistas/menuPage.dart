import 'package:flutter/material.dart';
import 'package:flutter_application_1/vistas/myHomePage.dart';
import 'package:flutter_application_1/vistas/sedesPage.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  double screenheight = 0.0;
  double screenwidth = 0.0;

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
              Text(
                "Menú",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                ),
              ),
              producto("Churrasco", "churrasco.jpg", "30.000",
                  "Churrasco al termino al gusto con ensalada y papas rusticas con salsas."),
              producto("Churrasco", "churrasco.jpg", "30.000",
                  "Churrasco al termino al gusto con ensalada y papas rusticas con salsas."),
              producto("Churrasco", "churrasco.jpg", "30.000",
                  "Churrasco al termino al gusto con ensalada y papas rusticas con salsas."),
              producto("Churrasco", "churrasco.jpg", "30.000",
                  "Churrasco al termino al gusto con ensalada y papas rusticas con salsas."),
              cambiaPagina(context, MyWidget(), "Volver al menú")
            ],
          ),
        ),
      )),
    );
  }
}
