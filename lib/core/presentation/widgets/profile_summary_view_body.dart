import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/chat_entity.dart';
import 'package:llegar/core/domain/entities/profile_summary_entity.dart';
import 'package:llegar/core/presentation/widgets/comment_widget.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/leave_review_button.dart';
import 'package:llegar/core/presentation/widgets/profile_summary_info_section.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ProfileSummaryViewBody extends StatelessWidget {
  const ProfileSummaryViewBody({
    super.key,
    required this.profileSummaryEntity,
  });

  final ProfileSummaryEntity profileSummaryEntity;

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
                // Display message button (which navigate to chat view)
                // and review button if item is not my item
                if (!profileSummaryEntity.isMyItem) ...[
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
                      LeaveReviewButton(
                        colorFilter: ColorFilter.mode(
                          mainThemeColor(context),
                          BlendMode.srcATop,
                        ),
                      ),
                    ],
                  ),
                ],
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
        appBarTitle: profileSummaryEntity.appBarTitle,
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
}
