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
          child: Wrap(spacing: 5.0, runSpacing: 5.0, children: [
            for (int i = 0; i < platformItems.length; i++)
              HoverChipPlatforms(
                title: platformItems[i]["title"]!,
                iconUrl: platformItems[i]["imgIcon"]!,
                backgroundImgUrl: platformItems[i]["imgBackground"]!,
              )
          ]),
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
