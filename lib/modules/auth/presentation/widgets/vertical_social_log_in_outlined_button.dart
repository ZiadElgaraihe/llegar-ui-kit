import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/auth/domain/entities/social_auth_entity.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class VerticalSocialLogInOutlinedButton extends StatefulWidget {
  const VerticalSocialLogInOutlinedButton({
    super.key,
    required this.socialLogInButtonEntity,
    required this.onFuturePressed,
  });

  final Future<void> Function() onFuturePressed;
  final SocialAuthEntity socialLogInButtonEntity;

  @override
  State<VerticalSocialLogInOutlinedButton> createState() =>
      _VerticalSocialLogInOutlinedButtonState();
}

class _VerticalSocialLogInOutlinedButtonState
    extends State<VerticalSocialLogInOutlinedButton> {
  bool _isLoading = false;

  Future<void> _onFuturePressed() async{
    futureDelayedNavigator(
      () async {
        setState(() {
          _isLoading = true;
        });

        await widget.onFuturePressed();

        if (!mounted) return;
        setState(() {
          _isLoading = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 200,
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: OutlinedButton(
          onPressed: _isLoading ? null : _onFuturePressed,
          child: _isLoading
              ? SpinKitFadingCircle(
                  color: valueBasedOnTheme<Color>(
                    context,
                    light: AppColors.prussianBlue,
                    dark: AppColors.orange,
                  ),
                  size: 35,
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(widget.socialLogInButtonEntity.icon),
                    AppSizes.height12,
                    Text(widget.socialLogInButtonEntity.title!),
                  ],
                ),
        ),
      ),
    );
  }
}
