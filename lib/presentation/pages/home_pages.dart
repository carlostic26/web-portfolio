import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //Main
            Container(height: 500, width: double.maxFinite),

            //Skills
            Container(
                height: 500, width: double.maxFinite, color: Colors.blueGrey),

            //Projects
            Container(
                height: 500, width: double.maxFinite, color: Colors.blueGrey),

            //Contact
            Container(
                height: 500, width: double.maxFinite, color: Colors.blueGrey),

            //Footer
            Container(
                height: 500, width: double.maxFinite, color: Colors.blueGrey),
          ],
        ),
      ),
    );
  }
}
