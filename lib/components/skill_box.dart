import 'package:flutter/material.dart';

class SkillBox extends StatelessWidget {
  final String title;

  SkillBox(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(title),
    );
  }
}
