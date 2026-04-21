import 'package:flutter/material.dart';

import 'views/home_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('MyApp Rebuild');
    return MaterialApp(
      title: 'Explore Responsiveness',
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
