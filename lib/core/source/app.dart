import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Portfolio/core/theme/theming_assets/themes.dart';
import 'package:Portfolio/features/home/presentation/ui/screens/home_screen.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1920, 1022),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        theme: AppThemes.lightTheme,
      ),
    );
  }
}
