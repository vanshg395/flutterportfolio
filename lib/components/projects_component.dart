import 'package:flutter/material.dart';
import 'package:flutterportfolio/components/project_box.dart';

class ProjectsContent extends StatelessWidget {
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
                'Projects',
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
              ProjectBox(
                title: 'Project 1',
                description:
                    'Fugiat ullamco officia culpa ullamco dolore eiusmod. Qui et ex proident irure quis non commodo qui ea. Eu laboris ea elit officia culpa ipsum tempor ut id deserunt irure et. Ea dolore velit mollit excepteur tempor ea irure in enim exercitation cupidatat labore veniam id. Veniam tempor laboris in et. Dolore occaecat Lorem commodo ea fugiat enim nulla nulla ex ipsum.',
              ),
              SizedBox(
                height: 20,
              ),
              ProjectBox(
                title: 'Project 2',
                description:
                    'Fugiat ullamco officia culpa ullamco dolore eiusmod. Qui et ex proident irure quis non commodo qui ea. Eu laboris ea elit officia culpa ipsum tempor ut id deserunt irure et. Ea dolore velit mollit excepteur tempor ea irure in enim exercitation cupidatat labore veniam id. Veniam tempor laboris in et. Dolore occaecat Lorem commodo ea fugiat enim nulla nulla ex ipsum.',
              ),
              SizedBox(
                height: 20,
              ),
              ProjectBox(
                title: 'Project 3',
                description:
                    'Fugiat ullamco officia culpa ullamco dolore eiusmod. Qui et ex proident irure quis non commodo qui ea. Eu laboris ea elit officia culpa ipsum tempor ut id deserunt irure et. Ea dolore velit mollit excepteur tempor ea irure in enim exercitation cupidatat labore veniam id. Veniam tempor laboris in et. Dolore occaecat Lorem commodo ea fugiat enim nulla nulla ex ipsum.',
              )
            ],
          ),
        ),
      ),
    );
  }
}
