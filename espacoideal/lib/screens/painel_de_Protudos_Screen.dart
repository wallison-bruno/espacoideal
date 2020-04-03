import 'package:espacoideal/widgets/navDrawer.dart';
import 'package:espacoideal/widgets/salas_widget.dart';
import 'package:espacoideal/widgets/servico_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PainelDeProdutosScreen extends StatefulWidget {
  @override
  _CasaScreenState createState() => _CasaScreenState();
}

class _CasaScreenState extends State<PainelDeProdutosScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'O que você está procurando?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfff5851f),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ServicoWidgets(),
            Sala_widget(),
          ],
        ),
      ),
    );
  }
}
