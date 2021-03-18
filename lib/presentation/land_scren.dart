import 'package:flutter/material.dart';
import 'package:internapplication/presentation/widgets/intro_button.dart';

import 'core/routes/routes.dart';

class LandScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
          alignment: Alignment.center,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Who do you want to sign u as ?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, color: Colors.red.shade300),
              ),
              SizedBox(
                height: 25.0,
              ),
              LandButton(
                buttontap: () {
                  Navigator.pushNamed(context, Introteacher);
                },
                c: "Teacher",
              ),
              SizedBox(
                height: 15.0,
              ),
              LandButton(
                buttontap: () {
                  Navigator.pushNamed(context, Introstudent);
                },
                c: "Student",
              ),
              SizedBox(
                height: 15.0,
              ),
              LandButton(
                buttontap: () {
                  Navigator.pushNamed(context, Introinstitute);
                },
                c: "Institute",
              ),
            ],
          )),
    );
  }
}
