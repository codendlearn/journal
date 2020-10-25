import 'package:flutter/material.dart';

import 'common/route.dart';
import 'pages/homepage.dart';
import 'widges/authWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthWidget(
        nonSignedInBuilder: (_) => Text("asdf"),
        signedInBuilder: (_) => HomePage(),
      ),
      onGenerateRoute: (settings) => AppRouter.onGenerateRoute(settings),
    );
  }
}
