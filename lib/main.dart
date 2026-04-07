import 'package:flutter/material.dart';
import 'package:responsive_scaler/responsive_scaler.dart';

import 'views/home_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ResponsiveScaler.init(designWidth: 375, minScale: 0.1);
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
      builder: (context, child) =>
          ResponsiveScaler.scale(context: context, child: child!),
      home: const HomeView(),
    );
  }
}
