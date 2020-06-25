import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

class AboutContent extends StatelessWidget {
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
                'ABOUT ME',
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
              Text(
                'Labore esse esse eiusmod commodo magna fugiat qui laboris irure veniam incididunt. Enim dolor velit incididunt ut eiusmod veniam nostrud amet sunt cillum ea occaecat. Duis et tempor reprehenderit minim proident enim velit magna dolore excepteur est fugiat.',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Labore esse esse eiusmod commodo magna fugiat qui laboris irure veniam incididunt. Enim dolor velit incididunt ut eiusmod veniam nostrud amet sunt cillum ea occaecat. Duis et tempor reprehenderit minim proident enim velit magna dolore excepteur est fugiat.',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
