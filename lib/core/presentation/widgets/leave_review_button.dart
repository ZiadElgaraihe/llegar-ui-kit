import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/review_bottom_sheet.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/show_custom_modal_bottom_sheet.dart';

class LeaveReviewButton extends StatelessWidget {
  const LeaveReviewButton({
    super.key,
    this.colorFilter,
  });

  final ColorFilter? colorFilter;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _onLeaveReviewPressed(context);
      },
      icon: SvgPicture.asset(
        AppIcons.leaveReview,
        colorFilter: colorFilter,
      ),
    );
  }

  void _onLeaveReviewPressed(BuildContext context) {
    futureDelayedNavigator(() {
      showCustomModalBottomSheet(
        context,
        height: 500,
        builder: (context) => const ReviewBottomSheet(),
      );
    });
  }
}
