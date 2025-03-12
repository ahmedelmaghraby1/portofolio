import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectContainer extends StatefulWidget {
  final String projectName;
  final String icon;
  final String projectDescription;
  const ProjectContainer({
    super.key,
    required this.projectName,
    required this.icon,
    required this.projectDescription,
  });

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter:
          (event) => setState(() {
            _isHovered = true;
          }),
      onExit:
          (event) => setState(() {
            _isHovered = false;
          }),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        width: 600.w,
        height: 400.h,
        duration: Duration(milliseconds: 500),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        decoration: BoxDecoration(
          color: _isHovered ? Colors.blue : null,
          borderRadius: BorderRadius.circular(25.r),
          border: Border.all(width: 1.5.sp),
        ),
        child: Column(
          spacing: 20.h,
          children: [
            Text(
              widget.projectName,
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(fontSize: 20),
            ),
            Image.asset(widget.icon),
            Flexible(
              child: Text(
                widget.projectDescription,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.fade,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
