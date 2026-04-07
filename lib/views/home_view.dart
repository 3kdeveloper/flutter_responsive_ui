import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // double physicalHeight = MediaQuery.sizeOf(context).height;
    // print('Height: $physicalHeight');
    return Scaffold(
      // appBar: AppBar(title: Text('Sizer'), backgroundColor: Colors.blueGrey),
      body: SafeArea(
        bottom: false,
        child: Column(
          spacing: 16,
          children: [
            // Container(height: 100, width: .maxFinite, color: Colors.blueGrey),
            Container(
              height: 100.px,
              width: .maxFinite,
              color: Colors.blueGrey,
              alignment: .center,
              child: Text(
                'Sizer',
                style: TextStyle(fontSize: 24.sp, color: Colors.white),
                // 15.sp can also be used instead of .dp
                // To know their differences, check #FAQ
              ),
            ),
            Container(
              height: 100,
              width: .maxFinite,
              color: Colors.blueGrey,
              alignment: .center,
              child: Text(
                'Sizer',
                style: TextStyle(fontSize: 24, color: Colors.white),
                // 15.sp can also be used instead of .dp
                // To know their differences, check #FAQ
              ),
            ),

            // Container(height: 40.px, width: 40.px, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
