import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:Portfolio/features/home/presentation/ui/views/about_me_view.dart';
import 'package:Portfolio/features/home/presentation/ui/views/contact_me_view.dart';
import 'package:Portfolio/features/home/presentation/ui/views/inroduction_view.dart';
import 'package:Portfolio/features/home/presentation/ui/views/projects_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late int _pageIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _pageIndex = index;
      _tabController.animateTo(index);
    });
  }

  void _onTabChanged(int index) {
    setState(() {
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 200),
        curve: Curves.bounceInOut,
      );
    });
  }

  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: _pageIndex);
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom: TabBar(
          indicatorWeight: 8,
          tabAlignment: TabAlignment.center,
          isScrollable: true,
          onTap: _onTabChanged,
          controller: _tabController,
          tabs: [
            Tab(text: 'Introduction', icon: Icon(Icons.home)),
            Tab(text: 'About me', icon: Icon(Icons.person)),
            Tab(text: 'Projects', icon: Icon(Icons.folder)),
            Tab(text: 'Contact', icon: Icon(Icons.contact_phone)),
          ],
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        Text("© 2024 Ahmed Elmaghraby ❤️  All Rights Reserved"),
      ],
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch},
        ),
        child: PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: [
            InroductionView(),
            AboutMeView(),
            ProjectsView(),
            // SkillsView(),
            ContactMeView(),
          ],
        ),
      ),
    );
  }
}
