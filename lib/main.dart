import 'package:flutter/material.dart';
import 'package:roomie/routes.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Roomie',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/splashscreen',
      routes: routes,
    );
  }
}



