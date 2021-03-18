import 'package:flutter/material.dart';
import 'package:internapplication/presentation/core/routes/routes.dart';
import 'package:internapplication/presentation/intro_student_screen.dart';
import 'package:internapplication/presentation/intro_teacher_screen.dart';
import 'package:internapplication/presentation/land_scren.dart';
import 'routes.dart';
import '../../intro_head_screen.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Landscreen:
        return MaterialPageRoute(builder: (_) => LandScreen());
      case Introstudent:
        return MaterialPageRoute(builder: (_) => IntroStudent());
      case Introteacher:
        return MaterialPageRoute(builder: (_) => IntroTeacher());
      case Introinstitute:
        return MaterialPageRoute(builder: (_) => IntroHead());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
