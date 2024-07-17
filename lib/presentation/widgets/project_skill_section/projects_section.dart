import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';
import 'package:web_portfolio/domain/project_utils.dart';
import 'package:web_portfolio/presentation/widgets/project_skill_section/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.scaffoldBg,
      child: Column(
        children: [
          //workmprojets title
          const Text(
            'Work Projects',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),

          const SizedBox(
            height: 50,
          ),

          //work project cardss
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                //TODO: use riverpod to this case use or handle the project model

                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCardWidget(project: workProjectUtils[i]),
              ],
            ),
          ),

          const SizedBox(
            height: 80,
          ),

          //workmprojets title
          const Text(
            'Hobby Projects',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),

          const SizedBox(
            height: 50,
          ),

          //work project cardss
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                //TODO: use riverpod to this case use or handle the project model

                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCardWidget(project: hobbyProjectUtils[i]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
