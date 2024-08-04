import 'package:web_portfolio/features/home/presentation/screens.dart';

class HoverChipPlatforms extends StatefulWidget {
  final String title;
  final String iconUrl;
  final String backgroundImgUrl;

  const HoverChipPlatforms({
    super.key,
    required this.title,
    required this.iconUrl,
    required this.backgroundImgUrl,
  });

  @override
  _HoverChipPlatformsState createState() => _HoverChipPlatformsState();
}

class _HoverChipPlatformsState extends State<HoverChipPlatforms> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    print('title: ${widget.title}');
    print('BACKGROUND IMG: ${widget.backgroundImgUrl}');

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          /*    padding: EdgeInsets.symmetric(
            vertical: _isHovered ? 10.0 : 8.0,
            horizontal: _isHovered ? 8.0 : 4.0,
          ), */
          child: _isHovered
              ? Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                          color: CustomColor.bgLight2,
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.network(
                        fit: BoxFit.fill,
                        widget.backgroundImgUrl,
                        width: 26.0,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(109, 0, 0, 0)),
                    ),
                    Center(
                        child: Text(
                      widget.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ],
                )
              : Container(
                  width: 200,
                  height: 80,
                  decoration: BoxDecoration(
                      color: CustomColor.bgLight2,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    leading: Image.network(
                      widget.iconUrl,
                      width: 26.0,
                    ),
                    title: Text(widget.title),
                  ))),
    );
  }
}
