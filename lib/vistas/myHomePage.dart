import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/vistas/menuPage.dart';
import 'package:flutter_application_1/vistas/registroPage.dart';
import 'package:flutter_application_1/vistas/sedesPage.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

Color myColor = Colors.teal;

double screenheight = 0.0;
double screenwidth = 0.0;

class _MyWidgetState extends State<MyWidget> {
  void cambiarColor() {
    setState(() {
      myColor = Color.fromARGB(255, 179, 152, 144);
    });
  }

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
                    SizedBox(height: 15),
                    Text(
                      "Restaurante ppp",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 38,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Bienvenido",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Desde 1980.",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Image(
                        image: AssetImage(
                          "assets/logo.png",
                        ),
                        height: 300),
                    cambiaPagina(context, RegistroPage(), "Registrarse"),
                    SizedBox(height: 10),
                    cambiaPagina(context, MenuPage(), "Ver menú"),
                    SizedBox(height: 10),
                    cambiaPagina(context, SedesPage(), "Ver sedes"),
                    SizedBox(height: 10),
                  ],
                ),
              ))),
    );
  }
}
