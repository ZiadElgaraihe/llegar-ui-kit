import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_icons.dart';

class LeaveReviewButton extends StatelessWidget {
  const LeaveReviewButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(AppIcons.leaveReview),
    );
  }
}
