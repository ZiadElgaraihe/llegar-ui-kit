import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/core/presentation/widgets/credit_card_data.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/enums/message_type.dart';
import 'package:llegar/shared/utils/functions/show_message_dialog.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class AddNewCardViewBody extends StatefulWidget {
  const AddNewCardViewBody({super.key});

  @override
  State<AddNewCardViewBody> createState() => _AddNewCardViewBodyState();
}

class _AddNewCardViewBodyState extends State<AddNewCardViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(
            // Used padding this way because credit card already has default
            // horizontal padding 16
            horizontal:
                MediaQuery.sizeOf(context).width < AppSizes.mediumtBreakpoint
                    ? 0
                    : 8,
          ),
          sliver: SliverToBoxAdapter(
            child: CreditCardData(
              formKey: _formKey,
              onCreditCardModelChange: (CreditCardModel creditCardModel) {},
            ),
          ),
        ),
        CustomSliverFillRemainingFooter(
          buttonTitle: translate(context).add,
          onFuturePressed: () async {
            await _onAddPressed(context);
          },
        ),
      ],
    );
  }

  _onAddPressed(BuildContext context) async {
    //remove this & add your logic
    await Future.delayed(const Duration(seconds: 2));

    if (!context.mounted) return;
    showMessageDialog(
      context,
      messageType: MessageType.success,
      title: translate(context).success,
      message: translate(context).yourCardHasBeenAddedSuccessfully,
    ).then(
      (value) {
        if (!context.mounted) return;
        Navigator.pop(context);
      },
    );

    //You can use this code in case of failure
    /*
    showMessageDialog(
      context,
      messageType: MessageType.failed,
      title: translate(context).failed,
      message: translate(context)
          .anErrorOccurredWhileProcessingYourRequestPleaseTryAgain,
    );
    */
  }
}
