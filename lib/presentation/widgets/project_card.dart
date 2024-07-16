import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';
import 'package:web_portfolio/domain/project_utils.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  ProjectCardWidget({
    super.key,
    required this.project,
  });

  //TODO: use riverpod to this case use or handle the project model
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 250,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: CustomColor.bgLight2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //Project Image
          Image.asset(project.image,
              height: 140, width: 250, fit: BoxFit.cover),

          //Title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),

          //subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(project.subtitle,
                style: const TextStyle(
                  fontSize: 10,
                  color: CustomColor.whiteSecondary,
                )),
          ),

          const Spacer(),

          //FOOTER (ACCES APPS)
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                const Text(
                  'Available on:',
                  style: TextStyle(
                      color: CustomColor.yellowSecondary, fontSize: 10),
                ),
                const Spacer(),
                if (project.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.androidLink]);
                      },
                      child: Image.asset(
                        'assets/icons/android.png',
                        width: 17,
                      ),
                    ),
                  ),
                if (project.githubLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.githubLink]);
                      },
                      child: Image.asset(
                        color: Colors.white,
                        'assets/icons/github.png',
                        width: 17,
                      ),
                    ),
                  )

                /*if (project.iosLink != null)
                
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: InkWell(
                    onTap: () {
                    js.context.callMethod("open", [project.iosLink]);
                    },Image.asset(
                    'assets/icons/ios.png',
                    width: 17,
                  ),),
                ) */
              ],
            ),
          )
        ],
      ),
    );
  }
}
