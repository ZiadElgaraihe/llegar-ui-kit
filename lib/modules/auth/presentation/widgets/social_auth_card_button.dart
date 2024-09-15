import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/auth/domain/entities/social_auth_entity.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/functions/future_delayed_navigator.dart';

class SocialAuthCardButton extends StatefulWidget {
  const SocialAuthCardButton({
    super.key,
    required this.onTap,
    required this.socialAuthEntity,
  });

  final Future<void> Function() onTap;
  final SocialAuthEntity socialAuthEntity;

  @override
  State<SocialAuthCardButton> createState() => _SocialAuthCardButtonState();
}

class _SocialAuthCardButtonState extends State<SocialAuthCardButton> {
  late ValueNotifier<bool> _isLoading;

  @override
  void dispose() {
    _isLoading.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _isLoading = ValueNotifier<bool>(false);
  }

  void _onButtonTapped() {
    futureDelayedNavigator(() async {
      _isLoading.value = true;

      await widget.onTap();

      _isLoading.value = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.lightGrey, width: 0.75),
      ),
      child: ValueListenableBuilder(
        valueListenable: _isLoading,
        builder: (context, isLoading, child) => InkWell(
          onTap: isLoading ? null : _onButtonTapped,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: AnimatedCrossFade(
              firstChild: SvgPicture.asset(
                widget.socialAuthEntity.icon,
                height: 20,
                width: 20,
              ),
              secondChild: const SpinKitFadingCircle(
                color: AppColors.prussianBlue,
                size: 20,
              ),
              crossFadeState: isLoading
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300),
            ),
          ),
        ),
      ),
    );
  }
}
