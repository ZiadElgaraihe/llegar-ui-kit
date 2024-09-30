import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/profile/presentation/widgets/edit_profile_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: translate(context).editProfile,
        ),
        body: const EditProfileViewBody(),
      ),
    );
  }
}
