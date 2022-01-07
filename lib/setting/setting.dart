import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.green,
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
