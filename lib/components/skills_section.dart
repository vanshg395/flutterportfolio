import 'package:flutter/material.dart';

import './skill_box.dart';

class SkillsSection extends StatelessWidget {
  final String title;
  final List skills;

  SkillsSection({
    @required this.title,
    @required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: skills.map((e) {
              return SkillBox(e);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
