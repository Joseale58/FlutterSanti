import 'package:flutter/material.dart';
import 'package:flutter_application_1/vistas/menuPage.dart';
import 'package:flutter_application_1/vistas/myHomePage.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({Key? key}) : super(key: key);

  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

double screenheight = 0.0;
double screenwidth = 0.0;

class _RegistroPageState extends State<RegistroPage> {
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
                "Registro de usuario",
                style: TextStyle(
                  fontSize: 38,
                ),
              ),
              Image(
                  image: AssetImage(
                    "logoR.png",
                  ),
                  height: 300),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Nombre de usuario",
                  ),
                ),
              ),
              SizedBox(
                width: 180,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Contraseña",
                  ),
                ),
              ),
              SizedBox(height: 50),
              cambiaPagina(context, MenuPage(), "Registrarse"),
              SizedBox(height: 20),
              cambiaPagina(context, MyWidget(), "Volvér"),
            ],
          ),
        ),
      )),
    );
  }
}
