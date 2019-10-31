import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Los métodos privados dentro del método build() nos
    // ayudan a oganizar nuestro código y reconocer la 
    // estructura del widget que estamos creando:
    Text _buildText() {
      return Text(
        'Bocattos',
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildText(),
            // Espacio entre recetas y el botón:
            SizedBox(height: 50.0),
            MaterialButton(
              color: Colors.white,
              child: Text("Registrase con Google"),
              onPressed: () => print("Botón presionado."),
            )
          ],
        ),
      ),
    );
  }
}