import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/domain/entities/chat_entity.dart';
import 'package:llegar/core/presentation/widgets/comment_widget.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/profile_summary_info_section.dart';
import 'package:llegar/core/presentation/widgets/review_bottom_sheet.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/show_custom_modal_bottom_sheet.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ProfileSummaryViewBody extends StatelessWidget {
  const ProfileSummaryViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                AppSizes.height24,
                const ProfileSummaryInfoSection(),
                AppSizes.height24,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 174,
                      child: CustomElevatedButton(
                        title: translate(context).message,
                        onPressed: () {
                          _onMessagePressed(context);
                        },
                      ),
                    ),
                    // This button should only appear for profiles
                    // you have rented from before
                    IconButton(
                      onPressed: () {
                        _onLeaveReviewPressed(context);
                      },
                      icon: SvgPicture.asset(
                        AppIcons.leaveReview,
                        colorFilter: ColorFilter.mode(
                          mainThemeColor(context),
                          BlendMode.srcATop,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: AppSizes.bodySymmetricPadding(context),
          sliver: SliverList.separated(
            itemCount: 4,
            itemBuilder: (context, index) => CommentWidget(
              comment: 'This guy is honest, it was great to deal with him.',
              onTap: () {
                _onCommentTapped(context);
              },
            ),
            separatorBuilder: (context, index) => AppSizes.height16,
          ),
        ),
      ],
    );
  }

  void _onMessagePressed(BuildContext context) {
    Navigator.pushNamed(
      context,
      AppRoutes.chatView,
      arguments: ChatEntity(
        appBarTitle: 'Atef Khaled',
        messages: [],
      ),
    );
  }

  Future<Object?> _onCommentTapped(BuildContext context) {
    return Navigator.pushNamed(
      context,
      AppRoutes.chatView,
      arguments: ChatEntity(
        appBarTitle: 'Mohamed Galal',
        messages: [],
      ),
    );
  }

  void _onLeaveReviewPressed(BuildContext context) {
    showCustomModalBottomSheet(
      context,
      height: 500,
      builder: (context) => const ReviewBottomSheet(),
    );
  }
}
