import 'dart:js' as js;

import 'package:web_portfolio/features/home/presentation/screens.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(children: [
        const Text(
          'Get in touch',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary),
        ),
        const SizedBox(
          height: 50,
        ),
        ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth >= kMinDesktopWidth;

              if (isDesktop) {
                return buildNameEmailFieldDesktop();
              }

              //else
              return buildNameEmailFieldMobile();
            })),
        const SizedBox(
          height: 15,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: const CustomTextField(
            hintText: 'Your message',
            maxLines: 15,
          ),
        ),

        const SizedBox(
          height: 20,
        ),

        //send button
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
                onPressed: () {}, child: const Text('Get in touch')),
          ),
        ),

        const SizedBox(
          height: 30,
        ),

        ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider()),
        const SizedBox(
          height: 15,
        ),

        //SNS icon button links

        Wrap(
          spacing: 12,
          runSpacing: 12,
          alignment: WrapAlignment.center,
          children: [
            InkWell(
              onTap: () {
                js.context.callMethod("open", [Dev.urlLinkedin]);
              },
              child: /* Image.asset(
                "assets/icons/linkedin.png",
                width: 28,
                color: Colors.white,
              ), */

                  Image.network(
                Dev.iconLinkedin,
                width: 28,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                js.context.callMethod("open", [Dev.urlFacebook]);
              },
              child: /*  Image.asset(
                "assets/icons/facebook.png",
                width: 28,
                color: Colors.white,
              ), */

                  Image.network(
                Dev.iconFacebook,
                width: 28,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                js.context.callMethod("open", [Dev.urlInstagram]);
              },
              child: /* Image.asset(
                "assets/icons/instagram.png",
                width: 28,
                color: Colors.white,
              ), */

                  Image.network(
                Dev.iconInstagram,
                width: 28,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                js.context.callMethod("open", [Dev.urlGithub]);
              },
              child: Image.network(
                Dev.iconGithub,
                width: 28,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return const Row(
      children: [
        Flexible(
          child: CustomTextField(
            hintText: 'Your name',
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Flexible(
          child: CustomTextField(
            hintText: 'Your email',
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return const Column(
      children: [
        Flexible(
          child: CustomTextField(
            hintText: 'Your name',
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Flexible(
          child: CustomTextField(
            hintText: 'Your email',
          ),
        ),
      ],
    );
  }
}
