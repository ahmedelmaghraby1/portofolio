import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Portfolio/features/home/domain/entities/project_entity.dart';
import 'package:Portfolio/features/home/presentation/ui/screens/project_screen.dart';

class ProjectContainer extends StatefulWidget {
  final ProjectEntity project;
  const ProjectContainer({super.key, required this.project});

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  @override
  void initState() {
    super.initState();
  }

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
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder:
                  (
                    BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                  ) => ProjectScreen(project: widget.project),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                Tween<Offset> tween = Tween<Offset>(
                  begin: Offset(-1.0, 0.0),
                  end: Offset.zero,
                );

                return SlideTransition(
                  position: animation.drive(tween),
                  child: ProjectScreen(project: widget.project),
                );
              },
            ),
          );
        },
        child: AnimatedContainer(
          width: 600.w,
          constraints: BoxConstraints(maxHeight: 400.h),
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
                widget.project.name,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 150.h,
                width: 150.w,
                child: Image.asset(widget.project.icon),
              ),
              Flexible(
                child: Text(
                  widget.project.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.fade,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
