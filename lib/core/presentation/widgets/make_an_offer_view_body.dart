import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/amount_entry_text_field.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class MakeAnOfferViewBody extends StatelessWidget {
  const MakeAnOfferViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                AppSizes.height16,
                Text(
                  translate(context).enterYourOfferAmount,
                  style: AppTextStyles.bold16(context),
                ),
                AppSizes.height16,
                const AmountEntryTextField(),
                AppSizes.height24,
                CustomTextFormField(
                  hintText: translate(context).textMessage,
                  keyboardType: TextInputType.multiline,
                  minLines: 5,
                  maxLines: 7,
                ),
              ],
            ),
          ),
        ),
        CustomSliverFillRemainingFooter(
          buttonTitle: translate(context).sendOffer,
          onFuturePressed: () async {
            await _onSendOfferPressed(context);
          },
        ),
      ],
    );
  }

  Future<void> _onSendOfferPressed(BuildContext context) async {
    //remove this & add your logic
    await Future.delayed(const Duration(seconds: 2));

    if (!context.mounted) return;
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.offerProcessingView,
      (route) => false,
    );
  }
}
