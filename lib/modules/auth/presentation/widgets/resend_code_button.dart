import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:llegar/modules/auth/presentation/manager/logic/resend_code_manager.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/enums/resend_code_state.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ResendCodeButton extends StatelessWidget {
  const ResendCodeButton({
    super.key,
    required this.resendCodeManager,
    required this.onResendCode,
    required this.currentResendCodeState,
  });

  final ResendCodeState currentResendCodeState;
  final Future<void> Function() onResendCode;
  final ResendCodeManager resendCodeManager;

  _onPressed() {
    futureDelayedNavigator(() async {
      resendCodeManager.resendCodeState.value = ResendCodeState.resending;
      await onResendCode();
      resendCodeManager.resetResendCodeTimer();
      resendCodeManager.resendCodeState.value = ResendCodeState.waiting;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:
          currentResendCodeState == ResendCodeState.ready ? _onPressed : null,
      style: TextButton.styleFrom(
        foregroundColor: AppColors.green,
      ),
      child: currentResendCodeState == ResendCodeState.resending
          ?
          //add SizedBox on the SpinKitFadingCircle to make the splash
          //that appears around the fading circle
          //for a period of milliseconds is proportional to
          //the size of the fading circle
          const SizedBox(
              width: 35,
              child: SpinKitFadingCircle(
                color: AppColors.green,
                size: 25,
              ),
            )
          : Text(
              translate(context).resendCode,
              style: AppTextStyles.regular20(context),
            ),
    );
  }
}
