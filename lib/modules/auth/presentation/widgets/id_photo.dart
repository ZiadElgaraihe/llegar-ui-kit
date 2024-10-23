import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class IdPhoto extends StatelessWidget {
  const IdPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 500,
              ),
              child: AspectRatio(
                aspectRatio: 398 / 259,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: mainThemeColor(context),
                      width: 4,
                    ),
                    image: const DecorationImage(
                      image: AssetImage(AppImages.idPhoto),
                    ),
                  ),
                ),
              ),
            ),
            PositionedDirectional(
              top: 0,
              end: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: mainThemeColor(context),
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
            ),
          ],
        ),
      ],
    );
  }
}
