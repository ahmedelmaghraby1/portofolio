import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/features/home/presentation/ui/widgets/intro_half_screen.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(child: IntroHalfScreen()),
            Expanded(child: Container()),
          ],
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 313.h,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
