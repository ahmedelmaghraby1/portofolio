import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroHalfScreen extends StatelessWidget {
  const IntroHalfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.symmetric(vertical: 50.h),
          child: Image.asset('images/icon.png', height: 100.h, width: 100.w),
        ),
        SizedBox(height: 100.h),
        Text('data'),
        SizedBox(height: 30.h),
        Text('Tomasz Gajda'),
        SizedBox(height: 5.h),
        Text('Front-end Developer / UI Designers'),
        SizedBox(height: 30.h),
      ],
    );
  }
}
