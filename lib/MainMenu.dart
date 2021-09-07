import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapsdemo/MyMaps.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Location"),),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                child: Image.asset('images/pin.png'),
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyMaps()),
                );
              }, child: Text("Get My Location"))
            ],
          ),
        ),
      ),
    );
  }
}
