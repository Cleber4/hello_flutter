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
      appBar: AppBar(
        title: Text("Home page"),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            color: Colors.red,
            size: 80,
          ),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 100,
                width: 180,
                color: Colors.red,
                child: Center(
                  child: GestureDetector(
                    child: Text(
                      "People: $counter",
                      style: TextStyle(fontSize: 30, color: Colors.white),
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
                      color: Colors.red,
                      size: 30,
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
                      color: Colors.red,
                      size: 30,
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
