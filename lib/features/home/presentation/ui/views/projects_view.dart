import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Portfolio/features/home/data/projects.dart';
import 'package:Portfolio/features/home/presentation/ui/widgets/project_container.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
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
            Text(
              "🏆 My Projects",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 60.h),

            Wrap(
              spacing: 25.w,
              runSpacing: 20.h,
              children: List.generate(
                projects.length,
                (index) => ProjectContainer(project: projects[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
