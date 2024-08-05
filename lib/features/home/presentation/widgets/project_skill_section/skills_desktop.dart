import 'package:web_portfolio/features/home/presentation/screens.dart';
import 'package:web_portfolio/features/home/presentation/widgets/hover/hover_platform.dart';
import 'package:web_portfolio/features/home/presentation/widgets/hover/hover_technology.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //platforms
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Column(children: [
            Row(children: [
              SizedBox(
                width: 200,
                height: 180,
                child: Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  color: Colors.grey),
                ),
              ),
               SizedBox(
                width: 200,
                height: 180,
                 child: Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  color: Colors.grey),
                               ),
               ),
              
            ],),
             Row(children: [
              SizedBox(
                child: Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  color: Colors.grey),
                ),
              ),
               Container(
                width: 120,
                height: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: Colors.grey),
              ),
              
            ],),
          ],)
        ),

        const SizedBox(
          width: 50.0,
        ),

        //Skills section

        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                for (int i = 0; i < technolyItems.length; i++)
                  HoverChipTechnology(
                    title: technolyItems[i]["title"]!,
                    avatarUrl: technolyItems[i]["imgIcon"]!,
                    backgroundImgUrl: technolyItems[i]["imgBackground"]!,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
