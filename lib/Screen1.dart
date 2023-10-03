import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        backgroundColor: Colors.amberAccent,
        child: ListView(
          children: [
            // DrawerHeader(
            //   child: Text('Hamza Iqbal'),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text('Hamza Iqbal'),
              accountEmail: Text('humza.iqbal.hi@gmail.com'),
            )
          ],
        ),
      ),
    );
  }
}
