import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/breakpoints.dart';
import 'views/home_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(enabled: false, builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('MyApp Rebuild');
    return LayoutBuilder(
      builder: (context, constraints) {
        final Size designSize;
        if (constraints.maxWidth >= Breakpoints.desktop) {
          designSize = const Size(1440, 1024);
        } else if (constraints.maxWidth >= Breakpoints.tablet) {
          designSize = const Size(768, 1024);
        } else {
          designSize = const Size(375, 812);
        }
        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true,
          splitScreenMode: true,

          /// Clamp scale factor so it never goes wild on large screens
          // fontSizeResolver: (fontSize, instance) =>
          //     fontSize * instance.scaleWidth.clamp(0.85, 1.2),
          builder: (_, child) => MaterialApp(
            title: 'Explore Responsiveness',
            debugShowCheckedModeBanner: false,
            home: const HomeView(),
          ),
        );
      },
    );
  }
}
