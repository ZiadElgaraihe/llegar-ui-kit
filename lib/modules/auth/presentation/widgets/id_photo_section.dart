import 'package:flutter/material.dart';
import 'package:llegar/modules/auth/presentation/widgets/id_photo.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/app_strings.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class IdPhotoSection extends StatelessWidget {
  const IdPhotoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            translate(context).idPhoto,
            style: AppTextStyles.bold16(context).copyWith(
              fontFamily: AppStrings.interFontFamily,
              color: valueBasedOnTheme<Color>(
                context,
                light: AppColors.black,
                dark: AppColors.white,
              ),
            ),
          ),
        ),
        AppSizes.height8,
        IdPhoto(),
      ],
    );
  }
}
