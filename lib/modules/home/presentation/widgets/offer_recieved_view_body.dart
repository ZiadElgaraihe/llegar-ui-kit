import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/item_details_outlined_button.dart';
import 'package:llegar/core/presentation/widgets/item_widget.dart';
import 'package:llegar/core/presentation/widgets/profile_photo.dart';
import 'package:llegar/modules/home/presentation/widgets/offer_info_section.dart';
import 'package:llegar/modules/home/presentation/widgets/offer_recieved_actions_section.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class OfferRecievedViewBody extends StatelessWidget {
  const OfferRecievedViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: AppSizes.bodySymmetricPadding(context),
      child: Column(
        children: [
          ProfilePhoto(
            size: 156,
            side: BorderSide(
              color: mainThemeColor(context),
              width: 3,
            ),
          ),
          AppSizes.height24,
          const OfferInfoSection(),
          AppSizes.height24,
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: ItemDetailsOutlinedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.profileSummaryView,
                  arguments: 'Atef Khaled',
                );
              },
              title: translate(context).seeHisPage,
            ),
          ),
          AppSizes.height24,
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              translate(context).yourItem,
              style: AppTextStyles.semiBold20(context).copyWith(
                fontFamily: AppStrings.interFontFamily,
                color: mainThemeColor(context),
              ),
            ),
          ),
          AppSizes.height16,
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: AppSizes.mediumtBreakpoint,
            ),
            child: const ItemWidget(appearLikeButton: false),
          ),
          AppSizes.height36,
          const OfferRecievedActionsSection(),
        ],
      ),
    );
  }
}
