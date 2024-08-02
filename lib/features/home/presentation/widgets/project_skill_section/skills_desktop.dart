import 'package:web_portfolio/features/home/presentation/screens.dart';

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
              Container(
                  width: 200,
                  decoration: BoxDecoration(
                      color: CustomColor.bgLight2,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    /* leading: Image.asset(
                      platformItems[i]["img"],
                      width: 26.0,
                    ), */
                    leading: Image.network(
                      platformItems[i]["img"],
                      width: 26.0,
                    ),
                    title: Text(platformItems[i]["title"]),
                  )),
          ]),
        ),

        const SizedBox(
          width: 50.0,
        ),

        //Skills

        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                for (int i = 0; i < skillItems.length; i++)
                  HoverChip(
                    title: skillItems[i]["title"]!,
                    avatarUrl: skillItems[i]["img"]!,
                    backgroundUrl: skillItems[i]["backgroundUrl"]!,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class HoverChip extends StatefulWidget {
  final String title;
  final String avatarUrl;
  final String backgroundUrl;

  const HoverChip({
    Key? key,
    required this.title,
    required this.avatarUrl,
    required this.backgroundUrl,
  }) : super(key: key);

  @override
  _HoverChipState createState() => _HoverChipState();
}

class _HoverChipState extends State<HoverChip> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: CustomColor.bgLight2,
          borderRadius: BorderRadius.circular(20),
          image: _isHovered
              ? DecorationImage(
                  image: NetworkImage(widget.backgroundUrl),
                  fit: BoxFit.cover,
                  opacity: 0.3,
                )
              : null,
        ),
        padding: EdgeInsets.symmetric(
          vertical: _isHovered ? 14.0 : 12.0,
          horizontal: _isHovered ? 18.0 : 16.0,
        ),
        child: Chip(
          backgroundColor: Colors.transparent,
          label: Text(widget.title),
          avatar: Image.network(widget.avatarUrl),
        ),
      ),
    );
  }
}


/* class SkillsDesktop extends StatelessWidget {
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
              Container(
                  width: 200,
                  decoration: BoxDecoration(
                      color: CustomColor.bgLight2,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    /* leading: Image.asset(
                      platformItems[i]["img"],
                      width: 26.0,
                    ), */
                    leading: Image.network(
                      platformItems[i]["img"],
                      width: 26.0,
                    ),
                    title: Text(platformItems[i]["title"]),
                  )),
          ]),
        ),

        const SizedBox(
          width: 50.0,
        ),

        //Skills

        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                for (int i = 0; i < skillItems.length; i++)
                  Chip(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 16.0,
                      ),
                      backgroundColor: CustomColor.bgLight2,
                      label: Text(skillItems[i]["title"]),
                      avatar: Image.network(skillItems[i]["img"]))
              ],
            ),
          ),
        )
      ],
    );
  }
}
 */