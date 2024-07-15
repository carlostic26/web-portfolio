import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';
import 'package:web_portfolio/config/data_dev.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(maxHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avatar img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg,
                CustomColor.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/dev_photo.png',
              width: screenWidth / 2,
              height: screenHeight / 2.5,
            ),
          ),

          const SizedBox(
            height: 30.0,
          ),

          //intro text

          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi!",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                    height: 1.5),
              ),
              Image.asset(
                'assets/dash.png',
                width: screenWidth / 10,
              ),
            ],
          ),
          Text(
            "I'm ${Dev.name} \nA Flutter Developer",
            style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
                height: 1.5),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 190,
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Get in Touch")),
          ),
        ],
      ),
    );
  }
}