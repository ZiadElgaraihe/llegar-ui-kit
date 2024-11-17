import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/domain/entities/success_view_entity.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({
    super.key,
    required this.successViewEntity,
  });

  final SuccessViewEntity successViewEntity;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: AppSizes.height24),
                SvgPicture.asset(
                  valueBasedOnTheme<String>(
                    context,
                    light: AppImages.okAmico,
                    dark: AppImages.okAmicoDark,
                  )!,
                ),
                AppSizes.height48,
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    successViewEntity.title,
                    style: AppTextStyles.bold40(context),
                  ),
                ),
                AppSizes.height12,
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    successViewEntity.subTitle,
                    style: AppTextStyles.medium18(context).copyWith(
                      color: secondaryThemeColor(context),
                    ),
                  ),
                ),
                const Expanded(child: AppSizes.height24),
                CustomElevatedButton(
                  title: translate(context).getStarted,
                  onPressed: () {
                    _onPressed(context);
                  },
                ),
                AppSizes.height24
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _onPressed(BuildContext context) {
    if (!context.mounted) return;
    Navigator.pushReplacementNamed(
      context,
      AppRoutes.navBarView,
    );
  }
}
