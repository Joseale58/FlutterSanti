import 'package:flutter/material.dart';

GestureDetector largeButton(VoidCallback function, Color bgColor, String text) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      )),
    ),
  );
}

GestureDetector cambiaPagina(
    BuildContext context, Widget puntero, String text) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return puntero;
          },
        ),
      );
    },
    child: Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 159, 174, 182),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      )),
    ),
  );
}

GestureDetector smallButton(VoidCallback function, Color bgColor, String text) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      )),
    ),
  );
}

Container producto(
    String nom_producto, String imagen, String precio, String descripcion) {
  return Container(
    child: Column(
      children: [
        Image(
          image: AssetImage(imagen),
          height: 200,
          width: 300,
        ),
        //Image(image: AssetImage(imagen)),
        Text(
          nom_producto,
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontFamily: 'Alumni Sans Pinstripe',
            fontSize: 17,
          ),
        ),
        SizedBox(height: 5),
        Text(
          ("Precio: " + precio),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Alumni Sans Pinstripe',
            fontSize: 14,
          ),
        ),
        SizedBox(height: 5),
        Text(
          descripcion,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            fontFamily: 'Alumni Sans Pinstripe',
          ),
        ),
        SizedBox(height: 20),
        smallButton(() {}, Colors.transparent, "Comprar"),
        SizedBox(height: 8),
        /*Text(
          ("________________________________________"),
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 14,
          ),
        ),*/
        Row(children: <Widget>[
          Expanded(child: Divider()),
          Text(" PPP "),
          Expanded(child: Divider()),
        ]),
        SizedBox(height: 25),
      ],
    ),
  );
}

Container ubicacion(String direccion, String barrio, String foto_mapa) {
  return Container(
    child: Column(
      children: [
        Image(
          image: AssetImage(foto_mapa),
          height: 200,
          width: 300,
        ),
        //Image(image: AssetImage(foto_mapa)),
        SizedBox(height: 10),
        Text(
          (direccion + " Barrio: " + barrio),
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
        ),
        SizedBox(height: 30),
      ],
    ),
  );
}
