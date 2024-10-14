import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
    );
  }
}
