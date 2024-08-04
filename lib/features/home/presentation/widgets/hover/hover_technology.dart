import 'package:web_portfolio/features/home/presentation/screens.dart';

class HoverChipTechnology extends StatefulWidget {
  final String title;
  final String avatarUrl;
  final String backgroundImgUrl;

  const HoverChipTechnology({
    super.key,
    required this.title,
    required this.avatarUrl,
    required this.backgroundImgUrl,
  });

  @override
  _HoverChipTechnologyState createState() => _HoverChipTechnologyState();
}

class _HoverChipTechnologyState extends State<HoverChipTechnology> {
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
        padding: EdgeInsets.symmetric(
          vertical: _isHovered ? 10.0 : 8.0,
          horizontal: _isHovered ? 8.0 : 4.0,
        ),
        child: _isHovered
            ? Container(
                height: 70,
                width: 100,
                alignment: Alignment.center,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    SizedBox(
                        height: 70,
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            widget.backgroundImgUrl,
                            fit: BoxFit.cover,
                          ),
                        )),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(109, 0, 0, 0)),
                    ),
                    Center(
                      child: Text(
                        widget.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Chip(
                backgroundColor: Colors.transparent,
                label: Text(widget.title),
                avatar: Image.network(widget.avatarUrl),
              ),
      ),
    );
  }
}
