import 'package:web_portfolio/features/home/presentation/screens.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key, required this.onContactTap});
  final Function(int) onContactTap;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(maxHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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
            child: /* Image.asset(
              'assets/dev_profile.png',
              width: screenWidth / 1.8,
              height: screenHeight / 3,
            ), */

                Image.network(
              Dev.urlImgDev,
              width: screenWidth / 1.8,
              height: screenHeight / 3,
            ),
          ),

          const SizedBox(
            height: 20.0,
          ),

          //intro text

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi!",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                    height: 1.3),
              ),
              /*   Image.asset(
                'assets/dash.png',
                width: screenWidth / 10,
              ),
 */
              Image.network(
                Dev.urlImgDash,
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
                height: 1.3),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 190,
            child: ElevatedButton(
                onPressed: () {
                  onContactTap(3);
                },
                child: const Text("Get in Touch")),
          ),
        ],
      ),
    );
  }
}
