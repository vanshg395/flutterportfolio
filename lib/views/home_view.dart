import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:flutterportfolio/components/centered_box.dart';
import 'package:flutterportfolio/components/projects_component.dart';
import '../components/about_content.dart';
import '../components/skills_content.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF79D70F),
      body: CenteredBox(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: Offset(4, 4),
                spreadRadius: 1,
                blurRadius: 20,
              ),
            ],
          ),
          child: ScreenTypeLayout(
            desktop: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/img/me.jpeg',
                            height: 150,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Vansh Goel',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'A cadet who codes',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 1,
                        width: 200,
                        color: Colors.black,
                      ),
                      FlatButton(
                        child: Text('About'),
                        onPressed: () {
                          setState(() {
                            _selectedScreen = 0;
                          });
                        },
                      ),
                      FlatButton(
                        child: Text('Skills'),
                        onPressed: () {
                          setState(() {
                            _selectedScreen = 1;
                          });
                        },
                      ),
                      FlatButton(
                        child: Text('Projects'),
                        onPressed: () {
                          setState(() {
                            _selectedScreen = 2;
                          });
                        },
                      ),
                      Container(
                        height: 1,
                        width: 200,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: double.infinity,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 20),
                ),
                Expanded(
                  child: _selectedScreen == 0
                      ? AboutContent()
                      : _selectedScreen == 1
                          ? SkillsContent()
                          : ProjectsContent(),
                ),
              ],
            ),
            mobile: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/img/me.jpeg',
                            height: 150,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Vansh Goel',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'A cadet who codes',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 1,
                        width: 200,
                        color: Colors.black,
                      ),
                      FlatButton(
                        child: Text('About'),
                        onPressed: () {
                          setState(() {
                            _selectedScreen = 0;
                          });
                        },
                      ),
                      FlatButton(
                        child: Text('Skills'),
                        onPressed: () {
                          setState(() {
                            _selectedScreen = 1;
                          });
                        },
                      ),
                      FlatButton(
                        child: Text('Projects'),
                        onPressed: () {
                          setState(() {
                            _selectedScreen = 2;
                          });
                        },
                      ),
                      Container(
                        height: 1,
                        width: 200,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                ),
                Expanded(
                  child: _selectedScreen == 0
                      ? AboutContent()
                      : _selectedScreen == 1
                          ? SkillsContent()
                          : ProjectsContent(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
