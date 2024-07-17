import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';
import 'package:web_portfolio/config/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
                    leading: Image.asset(
                      platformItems[i]["img"],
                      width: 26.0,
                    ),
                    title: Text(platformItems[i]["title"]),
                  )),
          ]),
        ),

        const SizedBox(
          height: 30.0,
        ),

        //Skills

        Wrap(
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
                  avatar: Image.asset(skillItems[i]["img"]))
          ],
        ),
      ],
    );
  }
}
