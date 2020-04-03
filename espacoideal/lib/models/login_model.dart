import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  String eamil;
  String senha;

  Login(
    this.eamil,
    this.senha,
  );

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
