import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_icons.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class LivePhoto extends StatelessWidget {
  const LivePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 225,
              width: 225,
              decoration: ShapeDecoration(
                shape: CircleBorder(
                  side: BorderSide(
                    color: valueBasedOnTheme<Color>(
                      context,
                      light: AppColors.prussianBlue,
                      dark: AppColors.orange,
                    )!,
                    width: 4,
                  ),
                ),
                image: const DecorationImage(
                  image: AssetImage(AppImages.livePhoto),
                ),
              ),
            ),
            PositionedDirectional(
              bottom: 16,
              end: 14,
              child: Container(
                decoration: BoxDecoration(
                  color: valueBasedOnTheme<Color>(
                    context,
                    light: AppColors.prussianBlue,
                    dark: AppColors.orange,
                  )!,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: SvgPicture.asset(AppIcons.pen),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
