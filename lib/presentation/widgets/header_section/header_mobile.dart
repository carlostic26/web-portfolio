import 'package:flutter/material.dart';
import 'package:web_portfolio/presentation/widgets/site_logo.dart';
import 'package:web_portfolio/presentation/widgets/styles/style.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});

  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
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
