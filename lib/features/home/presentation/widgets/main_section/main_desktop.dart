import 'package:web_portfolio/features/home/presentation/screens.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key, required this.onContactTap});
  final Function(int) onContactTap;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        height: screenHeight / 1.2,
        constraints: const BoxConstraints(minHeight: 350.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text(
                      "Hi!",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                          height: 1.5),
                    ),
                    /*       Image.asset(
                      'assets/dash.png',
                      width: screenWidth / 19,
                    ), */
                    Image.network(
                      Dev.urlImgDash,
                      width: screenWidth / 19,
                    ),
                  ],
                ),
                Text(
                  "I'm ${Dev.name} \nA Flutter Developer",
                  style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                      height: 1.5),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        onContactTap(3);
                      },
                      child: const Text("Get in Touch")),
                ),
              ],
            ),
/*             Image.asset(
              'assets/dev_profile.png',
              width: screenWidth / 4,
              height: screenHeight / 2,
            )
 */
            Image.network(
              Dev.urlImgDev,
              width: screenWidth / 4,
              height: screenHeight / 2,
            ),
          ],
        ));
  }
}
