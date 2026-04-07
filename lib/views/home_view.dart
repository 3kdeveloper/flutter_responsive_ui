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
          padding: .all(16.h),
          child: Column(
            spacing: 16.h,
            children: [
              Text('Mobile View', style: TextStyle(fontSize: 16.sp)),
              TextFormField(),
              TextFormField(),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                  ),
                  child: Text('Login', style: TextStyle(fontSize: 12.sp)),
                ),
              ),
            ],
          ),
        ),
        tablet: Padding(
          padding: .all(16.h),
          child: Column(
            spacing: 16.h,
            children: [
              Text('Tablet View', style: TextStyle(fontSize: 16.sp)),
              FlutterLogo(size: 100.r),
              TextFormField(),
              TextFormField(),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                  ),
                  child: Text('Login', style: TextStyle(fontSize: 12.sp)),
                ),
              ),
            ],
          ),
        ),
        desktop: Padding(
          padding: .all(16.h),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    Text('Desktop View', style: TextStyle(fontSize: 16.sp)),
                    FlutterLogo(size: 100.r),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: .center,
                  spacing: 16.h,
                  children: [
                    TextFormField(),
                    TextFormField(),
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                        ),
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
