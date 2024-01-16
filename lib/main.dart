import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:presence_app/pages/main/dashboard.dart';
import 'package:presence_app/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Presence App',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}
