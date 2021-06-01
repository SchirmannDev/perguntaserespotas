import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(65, 105, 225, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50), // <-- Radius
          ),
        ),
        child: Text(
          texto,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
