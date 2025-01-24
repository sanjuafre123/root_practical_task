import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:root_practical_task/provider/provider.dart';

import 'View/Screens/landing_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => EComProvider(),
      builder: (context, child) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
