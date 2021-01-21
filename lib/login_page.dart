import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:hello_flutter/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image.network(
                  'https://static.wikia.nocookie.net/solo-leveling/images/8/88/Ahjin.png/revision/latest/top-crop/width/360/height/450?cb=20210101125902',
                ),
              ),
              Container(
                height: 30,
              ),
              Container(
                child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            blurRadius: 24,
                            spreadRadius: 16,
                            color: Colors.black.withOpacity(0.2))
                      ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 30.0,
                            sigmaY: 30.0,
                          ),
                          child: Container(
                            height: 250,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                    width: 1.5,
                                    color: Colors.white.withOpacity(0.2))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 20, bottom: 12),
                              child: Column(
                                children: [
                                  TextField(
                                    onChanged: (text) {
                                      email = text;
                                      print(email);
                                    },
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      fillColor: Colors.white,
                                      focusColor: Colors.white,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextField(
                                    onChanged: (text) {
                                      password = text;
                                      print(password);
                                    },
                                    keyboardType: TextInputType.number,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  RaisedButton(
                                    textColor: Colors.white,
                                    color: Colors.deepPurple,
                                    onPressed: () {
                                      if (email == 'user@email.com' &&
                                          password == '123') {
                                        print('Welcome, $email');
                                        // Navegação entre telas - Rotas Nomeadas
                                        Navigator.of(context)
                                            .pushNamed('/home');
                                        /**Navegação entre telas - Manual
                                          * Navigator.of(context).push(MaterialPageRoute(
                                          * builder: (context) => HomePage(),
                                          * )); 
                                        */
                                      } else {
                                        print('Error in Email or password');
                                      }
                                    },
                                    child: Text('Entrar'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, player'),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/logo_01.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          _body(),
        ],
      ),
    );
  }
}

/*
Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 20, bottom: 12),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                          print(email);
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        onChanged: (text) {
                          password = text;
                          print(password);
                        },
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                        textColor: Colors.white,
                        color: Colors.deepPurple,
                        onPressed: () {
                          if (email == 'user@email.com' && password == '123') {
                            print('Welcome, $email');
                            // Navegação entre telas - Rotas Nomeadas
                            Navigator.of(context).pushNamed('/home');
                            /**Navegação entre telas - Manual
                       * Navigator.of(context).push(MaterialPageRoute(
                       * builder: (context) => HomePage(),
                       * )); 
                      */
                          } else {
                            print('Error in Email or password');
                          }
                        },
                        child: Text('Entrar'),
                      )
                    ],
                  ),
                ),*/
