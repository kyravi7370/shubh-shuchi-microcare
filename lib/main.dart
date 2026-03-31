import 'package:flutter/material.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(ShubhShuchiApp());
}

class ShubhShuchiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shubh Shuchi Microcare',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: DashboardScreen(),
    );
  }
}
