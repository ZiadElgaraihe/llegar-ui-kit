import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/future_delayed_navigator.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    this.onFuturePressed,
    this.onPressed,
  });

  final Future<void> Function()? onFuturePressed;
  final VoidCallback? onPressed;
  final String title;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (!_isLoading)
          ? (widget.onFuturePressed != null)
              ? () {
                  futureDelayedNavigator(
                    () async {
                      setState(() {
                        _isLoading = true;
                      });

                      //remove this
                      await Future.delayed(const Duration(seconds: 2));

                      await widget.onFuturePressed!();
                      
                      setState(() {
                        _isLoading = false;
                      });
                    },
                  );
                }
              : (widget.onPressed != null)
                  ? () {
                      futureDelayedNavigator(widget.onPressed!);
                    }
                  : null
          : null,
      child: _isLoading
          ? const SpinKitFadingCircle(
              color: AppColors.white,
              size: 35,
            )
          : Text(
              widget.title,
              style: AppTextStyles.bold20(context).copyWith(
                color: AppColors.white,
              ),
            ),
    );
  }
}
