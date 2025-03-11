import 'package:flutter/material.dart';
import 'package:portofolio/features/home/presentation/ui/widgets/diagonal_split_scree.dart';
import 'package:portofolio/features/home/presentation/ui/widgets/home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DiagonalSplitScreen(child: HomeScreenBody()));
  }
}
