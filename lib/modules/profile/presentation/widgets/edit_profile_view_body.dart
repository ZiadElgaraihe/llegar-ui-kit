import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/profile/presentation/widgets/edit_profile_form.dart';
import 'package:llegar/modules/profile/presentation/widgets/edit_profile_photo_section.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: const SliverToBoxAdapter(
            child: Column(
              children: [
                AppSizes.height24,
                EditProfilePhotoSection(),
                AppSizes.height16,
                EditProfileForm(),
              ],
            ),
          ),
        ),
        CustomSliverFillRemainingFooter(
          buttonTitle: translate(context).update,
          onFuturePressed: () async {},
        ),
      ],
    );
  }
}
