import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactMeView extends StatefulWidget {
  const ContactMeView({super.key});

  @override
  State<ContactMeView> createState() => _ContactMeViewState();
}

class _ContactMeViewState extends State<ContactMeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 100.h, bottom: 30.h),
      child: Column(
        children: [
          Text("Get in touch", style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 200.h),
          Wrap(
            runSpacing: 20.h,
            spacing: 100.w,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 20.w,
                children: [
                  Icon(Icons.email),
                  Text('ahmedelmaghraby2014@gmail.com'),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 20.w,
                children: [
                  Icon(Icons.phone_iphone_outlined),
                  Text('+20 1272731714'),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 20.w,
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset('images/github.png'),
                  ),
                  Text('https://github.com/ahmedelmaghraby1'),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 20.w,
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset('images/linked_in.png'),
                  ),
                  Text(
                    'https://www.linkedin.com/in/ahmed-elmaghraby-2365001b9',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
