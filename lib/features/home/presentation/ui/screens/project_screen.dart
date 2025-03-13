import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Portfolio/features/home/domain/entities/project_entity.dart';

class ProjectScreen extends StatelessWidget {
  final ProjectEntity project;
  const ProjectScreen({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: 30.w,
          vertical: 40.h,
        ),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Center(
                  child: Text(
                    project.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  project.description,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(fontSize: 22),
                  overflow: TextOverflow.ellipsis,
                ),
              ]),
            ),
            SliverList.list(
              children: [
                SizedBox(height: 40.h),

                Text(
                  'Main Features',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontSize: 20),
                ),
                SizedBox(height: 20.h),
              ],
            ),

            SliverList.builder(
              itemCount: project.mainFeatures.length,
              itemBuilder:
                  (context, index) => Text(
                    project.mainFeatures[index],
                    style: Theme.of(context).textTheme.bodyMedium,
                    overflow: TextOverflow.fade,
                  ),
            ),
            SliverList.list(
              children: [
                SizedBox(height: 40.h),

                Text(
                  'Photos',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontSize: 20),
                ),
                SizedBox(height: 20.h),
              ],
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 400.h, // Set a fixed height for the horizontal list
                child:
                    project.images.isEmpty
                        ? Center(
                          child: Text(
                            "No photos for this project",
                            style: Theme.of(context).textTheme.bodyMedium,
                            overflow: TextOverflow.fade,
                          ),
                        )
                        : ListView.separated(
                          separatorBuilder:
                              (context, index) => SizedBox(width: 40.w),
                          scrollDirection: Axis.horizontal,
                          itemCount: project.images.length,
                          itemBuilder:
                              (context, index) =>
                                  Image.asset(project.images[index]),
                        ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
