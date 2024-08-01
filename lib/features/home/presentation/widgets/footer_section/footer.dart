import 'package:web_portfolio/config/constants/enviroment.dart';
import 'package:web_portfolio/features/home/presentation/screens.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Text(
        'Made by ${Enviroment.name} with Flutter ${Enviroment.flutterVersion}',
        style: const TextStyle(
            fontWeight: FontWeight.w400, color: CustomColor.whiteSecondary),
      ),
    );
  }
}
