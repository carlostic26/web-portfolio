import 'package:web_portfolio/features/home/presentation/screens.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});

  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
      decoration:
          kHeaderDecoration, //es el style separado dentro de la carpeta widgets
      child: Row(
        children: [
          SiteLogo(
            onTap: onLogoTap,
          ),
          const Spacer(),
          IconButton(
              onPressed: onMenuTap,
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              )), //TODO: Manejar colores con riverpod para el handle switch de tema

          const SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
