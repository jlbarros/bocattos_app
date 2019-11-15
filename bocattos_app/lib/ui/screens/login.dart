import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BoxDecoration _buildBackground() {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg.jpeg'),
          fit: BoxFit.cover,
        ),
      );
    }
    Text _buildText() {
      return Text(
        'Bocattos',
        style: Theme.of(context).textTheme.headline,
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              // Espacio entre recetas y el botón:
              SizedBox(height: 50.0),
              MaterialButton(
                color: Colors.lightBlue[200],
                child: Text("Regístrate con Gogle"),
                onPressed: () => print("Botón presionado."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}