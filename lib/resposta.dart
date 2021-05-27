import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  Resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50), // <-- Radius
          ),
        ),
        child: Text(texto),
        onPressed: () {},
      ),
    );
  }
}
