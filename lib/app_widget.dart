import 'package:flutter/material.dart';
import 'package:hello_flutter/app_controller.dart';
import 'package:hello_flutter/home_page.dart';
import 'package:hello_flutter/login_page.dart';
import 'package:hello_flutter/main.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.deepPurple,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            debugShowCheckedModeBanner: false,
            // Navegação entre telas - Rotas Nomeadas
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
            },
          );
        });
  }
}
