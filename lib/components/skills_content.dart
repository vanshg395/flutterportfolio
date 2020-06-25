import 'package:flutter/material.dart';

import './skills_section.dart';

class SkillsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 30,
      ),
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SKILLS',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Nisi deserunt aute nulla et et sit nulla duis quis ea consequat sint.',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 30),
              SkillsSection(
                title: 'Industry Knowledge',
                skills: [
                  'App',
                  'Web',
                  'Backend',
                  'Graphic',
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SkillsSection(
                title: 'Tech Skills',
                skills: [
                  'Flutter',
                  'React',
                  'Node',
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SkillsSection(
                title: 'Tech Skills',
                skills: [
                  'Flutter',
                  'React',
                  'Node',
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SkillsSection(
                title: 'Tech Skills',
                skills: [
                  'Flutter',
                  'React',
                  'Node',
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SkillsSection(
                title: 'Tech Skills',
                skills: [
                  'Flutter',
                  'React',
                  'Node',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
