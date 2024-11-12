import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/presentation/widgets/profile_app_bar.dart';
import 'package:llegar/modules/profile/presentation/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
    required this.onBackPressed,
  });

  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        onBackPressed();
      },
      child: const Scaffold(
        appBar: ProfileAppBar(),
        body: ProfileViewBody(),
      ),
    );
  }
}
