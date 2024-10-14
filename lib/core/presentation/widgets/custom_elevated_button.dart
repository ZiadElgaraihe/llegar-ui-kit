import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';

class CustomElevatedButton extends StatefulWidget {
  ///The main button in the app You can perform tasks that require time
  ///using onFuturePressed() or instantaneous tasks using onPressed()
  ///
  ///onFuturePressed() has priority over onPressed()
  ///so if you used both of them onFuturePressed() will be executed
  const CustomElevatedButton({
    super.key,
    required this.title,
    this.onFuturePressed,
    this.onPressed,
  });

  ///Used for future processes like log in, sign up, ...
  final Future<void> Function()? onFuturePressed;

  ///Used for non future processes like navigation between views,
  ///appearing pop ups, ...
  final VoidCallback? onPressed;
  final String title;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  bool _isLoading = false;

  void _onPressed() {
    futureDelayedNavigator(widget.onPressed!);
  }

  Future<void> _onFuturePressed() async {
    futureDelayedNavigator(
      () async {
        setState(() {
          _isLoading = true;
        });

        await widget.onFuturePressed!();

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
        maxWidth: AppSizes.expandedBreakpoint,
      ),
      child: ElevatedButton(
        onPressed: (_isLoading)
            ? null
            : (widget.onFuturePressed != null)
                ? _onFuturePressed
                : (widget.onPressed != null)
                    ? _onPressed
                    : null,
        child: AnimatedCrossFade(
          firstChild: Text(
            widget.title,
            style: AppTextStyles.bold20(context).copyWith(
              color: AppColors.white,
            ),
          ),
          secondChild: const SpinKitFadingCircle(
            color: AppColors.white,
            size: 35,
          ),
          crossFadeState:
              _isLoading ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 300),
        ),
      ),
    );
  }
}
