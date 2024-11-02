import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/custom_secondary_elevated_button.dart';
import 'package:llegar/modules/home/presentation/widgets/offer_decision_bottom_sheet.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/show_custom_modal_bottom_sheet.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class OfferRecievedActionsSection extends StatelessWidget {
  const OfferRecievedActionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: CustomSecondaryElevatedButton(
            onPressed: () {
              _onPressedMethod(
                context,
                message: translate(context).doYouReallyWantToRejectThisOffer,
                onFuturePressed: () async {
                  //remove this & add your logic
                  await Future.delayed(const Duration(seconds: 2));

                  if (!context.mounted) return;
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.navBarView,
                    (route) => false,
                  );
                },
                title: translate(context).reject,
              );
            },
            title: translate(context).reject,
          ),
        ),
        AppSizes.width36,
        Flexible(
          child: CustomElevatedButton(
            onPressed: () {
              _onPressedMethod(
                context,
                message: translate(context).doYouReallyWantToAcceptThisOffer,
                onFuturePressed: () async {
                  //remove this & add your logic
                  await Future.delayed(const Duration(seconds: 2));

                  if (!context.mounted) return;
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.navBarView,
                    (route) => false,
                  );
                },
                title: translate(context).accept,
              );
            },
            title: translate(context).accept,
          ),
        ),
      ],
    );
  }

  void _onPressedMethod(
    BuildContext context, {
    required String message,
    required Future<void> Function() onFuturePressed,
    required String title,
  }) {
    showCustomModalBottomSheet(
      context,
      builder: (context) => OfferDecisionBottomSheet(
        message: message,
        onFuturePressed: onFuturePressed,
        title: title,
      ),
    );
  }
}
