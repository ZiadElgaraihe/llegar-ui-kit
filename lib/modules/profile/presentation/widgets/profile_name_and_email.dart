import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class ProfileNameAndEmail extends StatefulWidget {
  const ProfileNameAndEmail({
    super.key,
  });

  @override
  State<ProfileNameAndEmail> createState() => _ProfileNameAndEmailState();
}

class _ProfileNameAndEmailState extends State<ProfileNameAndEmail> {
  final GlobalKey columnKey = GlobalKey();
  double columnWidth = 0.0;

  @override
  void initState() {
    super.initState();
    _getColumnWidth();
  }

  // This method calculates the width of the column to determine
  //the appropriate cross-axis alignment
  // based on whether the column is positioned beside or under the user photo.
  // When the profile info fits on one line, the alignment is set to start;
  //when it spans two lines, the alignment switches to center.
  void _getColumnWidth() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox? box =
          columnKey.currentContext?.findRenderObject() as RenderBox?;
      if (box != null) {
        columnWidth = box.size.width;
        // The value 124 represents the sum of the width of the user photo
        //and the spacing within the OverflowBar.
        // If the dimensions of these elements change, ensure to adjust
        //the value of 124 accordingly for accurate layout calculations.
        if (columnWidth + 124 > box.constraints.maxWidth) {
          setState(() {});
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        key: columnKey,
        // The value 124 represents the sum of the width of the user photo
        //and the spacing within the OverflowBar.
        // If the dimensions of these elements change, ensure to adjust
        //the value of 124 accordingly for accurate layout calculations.
        crossAxisAlignment: (columnWidth + 124) > constraints.maxWidth
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          Text(
            'Nour Mohamed',
            style: AppTextStyles.bold24(context),
          ),
          Text(
            'nour_elagwany@gmail.com',
            style: AppTextStyles.medium16(context).copyWith(
              color: valueBasedOnTheme<Color>(
                context,
                listen:true,
                light: AppColors.black,
                dark: AppColors.white,
              ),
            ),
          ),
        ],
      );
    });
  }
}
