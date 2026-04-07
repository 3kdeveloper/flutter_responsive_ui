import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Approaches'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          spacing: 16,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Sizer')),
            ElevatedButton(onPressed: () {}, child: Text('Responsive Scaler')),
            ElevatedButton(onPressed: () {}, child: Text('Flutter ScreenUtil')),
            ElevatedButton(onPressed: () {}, child: Text('Manual Scaling')),
          ],
        ),
      ),
    );
  }
}
