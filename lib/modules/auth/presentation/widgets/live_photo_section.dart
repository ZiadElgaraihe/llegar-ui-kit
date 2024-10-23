import 'package:flutter/material.dart';
import 'package:llegar/modules/auth/presentation/widgets/live_photo.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class LivePhotoSection extends StatelessWidget {
  const LivePhotoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            translate(context).livePhoto,
            style: AppTextStyles.bold16(context).copyWith(
              fontFamily: AppStrings.interFontFamily,
              color: secondaryThemeColor(context),
            ),
          ),
        ),
        AppSizes.height8,
        /*
          Optionally, a FormField can be used to implement validation 
          for live photo, similar to how it's done with TextFormField. 
          However, in this UI Kit, FormField is not utilized for image selection 
          since there's no image picker functionality provided.
  
          For reference, you can check the implementation in otp_form.dart.
        */
        const LivePhoto(),
      ],
    );
  }
}
