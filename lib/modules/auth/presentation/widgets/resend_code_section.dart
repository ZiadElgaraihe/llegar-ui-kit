import 'dart:async';

import 'package:flutter/material.dart';
import 'package:llegar/modules/auth/presentation/manager/logic/resend_code_manager.dart';
import 'package:llegar/modules/auth/presentation/widgets/resend_code_button.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/translate.dart';

class ResendCodeSection extends StatefulWidget {
  const ResendCodeSection({
    super.key,
    required this.onResendCode,
  });

  final Future<void> Function() onResendCode;

  @override
  State<ResendCodeSection> createState() => _ResendCodeSectionState();
}

class _ResendCodeSectionState extends State<ResendCodeSection> {
  late ResendCodeManager _resendCodeManager;

  @override
  void initState() {
    super.initState();
    _resendCodeManager = ResendCodeManager()..init();
  }

  @override
  void dispose() {
    _resendCodeManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          translate(context).didNotReceiveEmail,
          style: AppTextStyles.regular20(context),
        ),
        AppSizes.height16,
        ValueListenableBuilder(
          valueListenable: _resendCodeManager.seconds,
          builder: (context, seconds, child) => Text(
            '${translate(context).youCanResendCodeIn} $seconds ${translate(context).second}',
            style: AppTextStyles.regular20(context),
          ),
        ),
        AppSizes.height4,
        ValueListenableBuilder(
          valueListenable: _resendCodeManager.resendCodeState,
          builder: (context, resendCodeState, child) => ResendCodeButton(
            resendCodeManager: _resendCodeManager,
            onResendCode: widget.onResendCode,
            currentResendCodeState: resendCodeState,
          ),
        ),
      ],
    );
  }
}
