import 'package:flutter/material.dart';
import 'package:responsive_scaler/responsive_scaler.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ResponsiveScaler.init(designWidth: 375, minScale: 0.1);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // static const double _designWidth = 375;
  // static const double _minTextScale = 0.8;
  // static const double _maxTextScale = 1.4;

  @override
  Widget build(BuildContext context) {
    debugPrint('MyApp Rebuild');
    return MaterialApp(
      title: 'Responsive Scaler Example',
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        // final data = MediaQuery.of(context);
        // final deviceScale = data.size.width / _designWidth;
        // // final systemScale = data.textScaler.scale(2.0);
        // final systemScale = data.textScaler
        //     .clamp(minScaleFactor: _minTextScale, maxScaleFactor: _maxTextScale)
        //     .scale(1.0);
        // final combinedScale = (deviceScale * systemScale).clamp(
        //   _minTextScale,
        //   _maxTextScale,
        // );
        // debugPrint(
        //   'Builder Rebuild — device: $deviceScale, system: $systemScale, combined: $combinedScale',
        // );
        // return MediaQuery(
        //   data: data.copyWith(textScaler: TextScaler.linear(combinedScale)),
        //   child: child ?? const SizedBox.shrink(),
        // );

        return ResponsiveScaler.scale(context: context, child: child!);
      },
      home: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App Typography',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(width: .maxFinite, height: .maxFinite, color: Colors.red),
      // SingleChildScrollView(
      //   padding: .all(16),
      //   child: Column(
      //     crossAxisAlignment: .start,
      //     children: [
      //       Text(
      //         'Display Large',
      //         style: Theme.of(context).textTheme.displayLarge,
      //       ),
      //       Text(
      //         'Display Medium',
      //         style: Theme.of(context).textTheme.displayMedium,
      //       ),
      //       Text(
      //         'Display Small',
      //         style: Theme.of(context).textTheme.displaySmall,
      //       ),
      //       Text(
      //         'Headline Large',
      //         style: Theme.of(context).textTheme.headlineLarge,
      //       ),
      //       Text(
      //         'Headline Medium',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //       Text(
      //         'Headline Small',
      //         style: Theme.of(context).textTheme.headlineSmall,
      //       ),
      //       Text('Title Large', style: Theme.of(context).textTheme.titleLarge),
      //       Text(
      //         'Title Medium',
      //         style: Theme.of(context).textTheme.titleMedium,
      //       ),
      //       Text('Title Small', style: Theme.of(context).textTheme.titleSmall),
      //       Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
      //       Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
      //       Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
      //       Text('Label Large', style: Theme.of(context).textTheme.labelLarge),
      //       Text(
      //         'Label Medium',
      //         style: Theme.of(context).textTheme.labelMedium,
      //       ),
      //       Text('Label Small', style: Theme.of(context).textTheme.labelSmall),
      //     ],
      //   ),
      // ),
    );
  }
}
