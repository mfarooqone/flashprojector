import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.orange,
        ),
        body: const SafeArea(
          child: Center(
            child: Text(
              "Coming Soon",
            ),
          ),
        ),
      );
    });
  }
}
