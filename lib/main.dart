import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/views/home_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/breakpoints.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(enabled: false, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final device = Breakpoints.device(constraints.maxWidth);

        return ScreenUtilInit(
          designSize: device.designSize,
          minTextAdapt: true,
          splitScreenMode: true,

          /// Clamp scale factor so it never goes wild on large screens
          // fontSizeResolver: (fontSize, instance) =>
          //     fontSize * instance.scaleWidth.clamp(0.85, 2),
          builder: (context, child) => MaterialApp(
            title: 'Explore Responsiveness',
            debugShowCheckedModeBanner: false,
            home: const HomeView(),
          ),
        );
      },
    );
  }
}
