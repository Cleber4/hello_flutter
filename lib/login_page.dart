import 'package:flutter/material.dart';
import 'package:hello_flutter/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image.network(
                      'https://www.clebersongilvan.com.br/wp-content/uploads/2020/12/cropped-logo.png'),
                ),
                Container(
                  height: 40,
                ),
                TextField(
                  onChanged: (text) {
                    email = text;
                    print(email);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
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
          ),
        ),
      ),
    );
  }
}
