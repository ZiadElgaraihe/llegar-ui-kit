import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/auth/domain/entities/social_auth_entity.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class SocialLogInOutlinedButton extends StatefulWidget {
  const SocialLogInOutlinedButton({
    super.key,
    required this.socialLogInButtonEntity,
    required this.onFuturePressed,
  });

  final Future<void> Function() onFuturePressed;
  final SocialAuthEntity socialLogInButtonEntity;

  @override
  State<SocialLogInOutlinedButton> createState() =>
      _SocialLogInOutlinedButtonState();
}

class _SocialLogInOutlinedButtonState extends State<SocialLogInOutlinedButton> {
  bool _isLoading = false;

  Future<void> _onFuturePressed() async {
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
    return OutlinedButton(
      onPressed: _isLoading ? null : _onFuturePressed,
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
          color: mainThemeColor(context),
          size: 35,
        ),
        crossFadeState:
            _isLoading ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 300),
      ),
    );
  }
}
