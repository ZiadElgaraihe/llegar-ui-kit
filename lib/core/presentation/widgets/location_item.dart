import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/domain/entities/address_entity.dart';
import 'package:llegar/core/presentation/widgets/edit_button.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({
    super.key,
    required this.address,
    this.onEditTapped,
    this.trailing,
  }) : assert(
          (onEditTapped != null || trailing != null),
          'Either "onEditTapped" or "trailing" must be provided. Both cannot be null to ensure proper user interaction.',
        );

  final AddressEntity address;
  final VoidCallback? onEditTapped;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.antiFlashWhite,
      ),
      child: Row(
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.lightSliver,
            ),
            child: Center(
              child: SvgPicture.asset(
                AppIcons.location,
                colorFilter: ColorFilter.mode(
                  valueBasedOnTheme<Color>(
                    context,
                    light: AppColors.prussianBlue,
                    dark: AppColors.orange,
                  )!,
                  BlendMode.srcATop,
                ),
              ),
            ),
          ),
          AppSizes.width16,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  address.title,
                  style: AppTextStyles.semiBold20(context),
                ),
                Text(
                  address.address,
                  style: AppTextStyles.semiBold11(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          AppSizes.width16,
          trailing ??
              EditButton(
                onTap: onEditTapped!,
              ),
        ],
      ),
    );
  }
}
