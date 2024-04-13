
import 'package:flutter/material.dart';
import 'package:wawastudio/responsive_layout/dimension.dart';

//ใช้วิธีตามคลิปในแชท

class ResponsiveLaout extends StatelessWidget {
  final Widget mobileBody;
  final Widget destopBody;

  ResponsiveLaout({required this.mobileBody, required this.destopBody})

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if(constraints.maxWidth < mobileWidth) {
          return mobileBody; 
        } else {
          return destopBody;
        }
      }),
    );
  }
}