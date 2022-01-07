import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProjectorGuide extends StatelessWidget {
  const ProjectorGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: const SafeArea(
          child: Center(
            child: Text(
              "Projector Guide",
            ),
          ),
        ),
      );
    });
  }
}
