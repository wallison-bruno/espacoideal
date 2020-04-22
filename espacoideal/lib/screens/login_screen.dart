import 'dart:async';

import 'package:espacoideal/screens/navigate.dart';
import 'package:flutter/material.dart';
import 'package:espacoideal/screens/cadastro_screen.dart';
import 'package:espacoideal/src/validate/imputs_validate.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ImputsValidate _imputsValidate = ImputsValidate();

  final emailController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffffffff),
                    Color(0xfff5851f),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(94),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                      top: 50,
                      right: 25,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/logo_espaco.png',
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 32,
                        right: 32,
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Form(
              key: _formKey,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 60),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 50,
                            padding: EdgeInsets.only(
                                top: 4, left: 16, right: 16, bottom: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            padding: EdgeInsets.only(
                              left: 16,
                              right: 18,
                            ),
                            child: TextFormField(
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.grey,
                                ),
                                hintText: 'E-mail',
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: _imputsValidate.validateEmail,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 50,
                            padding: EdgeInsets.only(
                                top: 4, left: 16, right: 16, bottom: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            padding: EdgeInsets.only(
                              left: 16,
                              right: 18,
                            ),
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              obscureText: true,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.grey,
                                ),
                                hintText: 'Senha',
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ],
                      ),
                    ),
                    StreamBuilder<Object>(
                        stream: null,
                        builder: (context, snapshot) {
                          return Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 16,
                                right: 40,
                              ),
                              child: Text(
                                'Esqueceu a senha?',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          );
                        }),
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => NavigateScreen()),
                          );
                        }
                      },
                      //() => Navigator.push(
                      // context,
                      //MaterialPageRoute(
                      // builder: (_) => HomeScreen(),
                      //),
                      //),
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xfff45d27),
                              Color(0xfff5851f),
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Center(
                          child: Text(
                            'login'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => CadastroScreen(),
                          ),
                        ),
                        child: Text(
                          'Cadastre-se',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
