import 'dart:async';

import 'package:flutter/material.dart';
import 'package:llegar/utils/enums/resend_code_state.dart';

class ResendCodeManager {
  late final ValueNotifier<int> seconds;
  late final ValueNotifier<ResendCodeState> resendCodeState;
  late Timer timer;

  void init() {
    seconds = ValueNotifier<int>(60);
    resendCodeState = ValueNotifier<ResendCodeState>(ResendCodeState.waiting);
    startResendCodeTimer();
  }

  void dispose() {
    //cancel timer
    timer.cancel();
    seconds.dispose();
    resendCodeState.dispose();
  }

  //reset resend code timer method
  void resetResendCodeTimer() {
    resendCodeState.value = ResendCodeState.waiting;
    seconds.value = 60;
    startResendCodeTimer();
  }

  //start resend code timer method
  void startResendCodeTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (seconds.value > 0) {
          seconds.value -= 1;
        } else {
          resendCodeState.value = ResendCodeState.ready;
          timer.cancel();
        }
      },
    );
  }
}
