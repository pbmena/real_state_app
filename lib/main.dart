import 'package:flutter/material.dart';
import 'package:real_state_app/routes/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real State App',
      /* theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ), */
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
