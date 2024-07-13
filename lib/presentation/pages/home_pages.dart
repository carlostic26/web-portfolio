import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';
import 'package:web_portfolio/config/constants/nav-items.dart';
import 'package:web_portfolio/config/data_dev.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //Main
            Container(
              height: 60,
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.transparent, CustomColor.bgLight1]),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  Text(
                    '${Dev.name} - Flutter Developer',
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: CustomColor.yellowSecondary),
                  ),
                  const Spacer(),
                  for (int i = 0; i < navTiles.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            navTiles[i],
                            style: const TextStyle(
                                fontSize: 16, color: CustomColor.whitePrimary),
                          )),
                    ),
                ],
              ),
            ),

            //Skills
            Container(
                height: 500, width: double.maxFinite, color: Colors.black87),

            //Projects
            Container(
              height: 500,
              width: double.maxFinite,
              color: CustomColor.scaffoldBg,
            ),

            //Contact
            Container(
                height: 500, width: double.maxFinite, color: Colors.black87),

            //Footer
            Container(
              height: 500,
              width: double.maxFinite,
              color: CustomColor.scaffoldBg,
            ),
          ],
        ),
      ),
    );
  }
}
