import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMeView extends StatefulWidget {
  const AboutMeView({super.key});

  @override
  State<AboutMeView> createState() => _AboutMeViewState();
}

class _AboutMeViewState extends State<AboutMeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: 50.h,
        bottom: 30.h,
        start: 30.w,
        end: 30.w,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  "🧑‍💻 Who Am I?",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 20.h),
                Text(
                  "I'm Ahmed El-Maghraby, a Computer and Automatic Control Engineer, and a graduate of Port Said University, Class of 2023. With 3 years of experience in Flutter development, I specialize in building high-performance applications with exceptional user experiences.",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(fontSize: 22),
                ),
                SizedBox(height: 20.h),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "✅ Turning ideas into practical, efficient applications.",
                      ),
                      Text(
                        "✅ Designing intuitive and visually appealing user interfaces..",
                      ),
                      Text(
                        "✅ Managing complex databases and ensuring smooth state management.",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
            Column(
              children: [
                Text(
                  "🚀 My Journey",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 20.h),
                Text(
                  "I started my development journey by mastering Flutter's fundamentals, then expanded my expertise to include:",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(fontSize: 22),
                ),
                SizedBox(height: 20.h),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("#  Developing task management apps using Hive."),
                      Text(
                        "#  Creating applications that support Dark Mode and Bilingual Interfaces (Arabic & English).",
                      ),
                      Text(
                        "#  Implementing advanced notification systems with Firebase Messaging.",
                      ),
                      Text(
                        "#  Integrating WebView solutions for hybrid platforms.",
                      ),
                      Text(
                        "#  Enhancing performance and user experience in apps that require Pagination and handle large data sets.",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
