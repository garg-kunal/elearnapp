import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internapplication/presentation/core/routes/routes.dart';
import 'presentation/core/routes/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouterGenerator.generateRoute,
      initialRoute: Landscreen,
    );
  }
}
