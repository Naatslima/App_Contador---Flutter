import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Contador()));
}

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int contador = 0;

  void incremento() {
    setState(() {
      if (contador <= 29) {
        contador++;
      }
    });
    //print("Incremento");
  }

  void decremento() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
    });
    //print("decremento");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 3, 129, 255),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("imagens/restaurant.png"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Pode entrar!",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
                contador.toString(),
                style: TextStyle(color: Colors.white, fontSize: 100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: incremento,
                    child: Text("Entrar"),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26))),
                  ),
                  SizedBox(width: 64),
                  TextButton(
                    onPressed: decremento,
                    child: Text("Sair"),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26))),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
