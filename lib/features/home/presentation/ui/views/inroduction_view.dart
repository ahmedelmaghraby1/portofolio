import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/constants/images.dart';

class InroductionView extends StatefulWidget {
  const InroductionView({super.key});

  @override
  State<InroductionView> createState() => _InroductionViewState();
}

class _InroductionViewState extends State<InroductionView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _firstTextAnimation;

  bool secondWord = false;
  bool viewImage = false;
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _firstTextAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _startAnimationSequence();
  }

  Future<void> _startAnimationSequence() async {
    await _animationController.forward();
    await Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        secondWord = true;
      });
    });
    await Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        viewImage = true;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 100.h, bottom: 30.h),
      child: SingleChildScrollView(
        child: Column(
          spacing: 20.h,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SlideTransition(
              position: _firstTextAnimation,
              child: Text(
                "Hi, I’m Ahmed Elmaghraby",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            AnimatedOpacity(
              opacity: secondWord ? 1 : 0,
              duration: const Duration(seconds: 1),
              child: Text(
                "Software Engineer | Front-End Developer | Senior Flutter developer 🚀",
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(height: 50.h),
            AnimatedOpacity(
              opacity: viewImage ? 1 : 0,
              duration: const Duration(seconds: 1),
              child: Image.asset(
                ImageConstants.profile,

                width: 700.w,
                height: 820.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
