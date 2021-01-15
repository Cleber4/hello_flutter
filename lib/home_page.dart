import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello_flutter/app_controller.dart';
import 'package:hello_flutter/screen/custom_switch.dart';
import 'app_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Adicionar Menu Hamburger
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                //Adicionar foto perfil
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                      'https://pbs.twimg.com/profile_images/1238216763118059520/z7Fi--3w_400x400.jpg'),
                ),
                accountName: Text('First User'),
                accountEmail: Text('user@email.com')),
            //Adicionar tela de lista
            ListTile(
              leading: Icon(Icons.home), //adicionar icon
              title: Text('Home'), // Adicionar titúlo
              subtitle: Text('Welcome,player'), //Adicionar  Subtitúlo
              // Adicionar click a lista de tela
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout), //adicionar icon
              title: Text('Logout'), // Adicionar titúlo
              subtitle: Text('finalizar sessão'), //Adicionar  Subtitúlo
              // Adicionar click a lista de tela
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home page"),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/LOGO_02.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              color: Colors.white,
              size: 80,
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
                          sigmaX: 40.0,
                          sigmaY: 40.0,
                        ),
                        child: Container(
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                  width: 1.5,
                                  color: Colors.white.withOpacity(0.2))),
                          child: Center(
                            child: GestureDetector(
                              child: Text(
                                "People: $counter",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                              onTap: () {
                                setState(() {
                                  counter--;
                                  print("People + 1 = $counter");
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
            Container(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                      icon: Icon(
                        Icons.person_remove_alt_1,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        setState(() {
                          counter--;
                          print("People - 1 = $counter");
                        });
                      }),
                ),
                Container(
                  child: IconButton(
                      icon: Icon(
                        Icons.person_add,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        setState(() {
                          counter++;
                          print("People + 1 = $counter");
                        });
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
            print("People + 1 = $counter");
          });
        },
      ),
    );
  }
}

/*
*/
