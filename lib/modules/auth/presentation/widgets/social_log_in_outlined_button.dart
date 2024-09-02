import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/auth/domain/entities/social_auth_entity.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class SocialLogInOutlinedButton extends StatefulWidget {
  const SocialLogInOutlinedButton({
    super.key,
    required this.socialLogInButtonEntity,
    required this.onFuturePressed,
  });

  final SocialAuthEntity socialLogInButtonEntity;
  final Future<void> Function() onFuturePressed;

  @override
  State<SocialLogInOutlinedButton> createState() =>
      _SocialLogInOutlinedButtonState();
}

class _SocialLogInOutlinedButtonState extends State<SocialLogInOutlinedButton> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: _isLoading
          ? null
          : () {
              futureDelayedNavigator(
                () async {
                  setState(() {
                    _isLoading = true;
                  });

                  await widget.onFuturePressed();

                  setState(() {
                    _isLoading = false;
                  });
                },
              );
            },
      child: AnimatedCrossFade(
        firstChild: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(widget.socialLogInButtonEntity.icon),
            AppSizes.width8,
            Text(widget.socialLogInButtonEntity.title!),
          ],
        ),
        secondChild: SpinKitFadingCircle(
          color: valueBasedOnTheme<Color>(
            context,
            light: AppColors.prussianBlue,
            dark: AppColors.orange,
          ),
          size: 35,
        ),
        crossFadeState:
            _isLoading ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 300),
      ),
    );
  }
}
