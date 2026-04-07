import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/widgets/responsive_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        mobile: Padding(
          padding: const .all(16),
          child: Column(
            spacing: 16,
            children: [
              Text('Mobile View', style: TextStyle(fontSize: 16.sp)),
              TextFormField(),
              TextFormField(),
              SizedBox(height: 16),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login', style: TextStyle(fontSize: 12.sp)),
                ),
              ),
            ],
          ),
        ),
        tablet: Padding(
          padding: const .all(20),
          child: Column(
            spacing: 16,
            children: [
              Text('Tablet View', style: TextStyle(fontSize: 16.sp)),
              FlutterLogo(size: 100),
              TextFormField(),
              TextFormField(),
              SizedBox(height: 16),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login', style: TextStyle(fontSize: 12.sp)),
                ),
              ),
            ],
          ),
        ),
        desktop: Padding(
          padding: const .all(24),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    Text('Desktop View', style: TextStyle(fontSize: 16.sp)),
                    FlutterLogo(size: 100),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: .center,
                  spacing: 16,
                  children: [
                    TextFormField(),
                    TextFormField(),
                    SizedBox(height: 16),
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Login', style: TextStyle(fontSize: 12.sp)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
