import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/core/presentation/widgets/amount_entry_text_field.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class MakeAnOfferViewBody extends StatefulWidget {
  const MakeAnOfferViewBody({super.key});

  @override
  State<MakeAnOfferViewBody> createState() => _MakeAnOfferViewBodyState();
}

class _MakeAnOfferViewBodyState extends State<MakeAnOfferViewBody> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '\$');
    _controller.addListener(_controllerListener);
  }

  @override
  void dispose() {
    _controller.removeListener(_controllerListener);
    _controller.dispose();
    super.dispose();
  }

  void _controllerListener() {
    _enforceDollarPrefix();
  }

  ///Ensure that the user adheres to the requirement of commencing
  ///the text input with the symbol "$"
  void _enforceDollarPrefix() {
    if (!_controller.text.startsWith('\$')) {
      _controller.text = '\$${_controller.text}';
      _controller.selection = const TextSelection.collapsed(offset: 1);
    }
  }

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
                AmountEntryTextField(
                  controller: _controller,
                ),
                AppSizes.height24,
                CustomTextFormField(
                  hintText: translate(context).textMessage,
                  minLines: 5,
                  maxLines: 7,
                ),
              ],
            ),
          ),
        ),
        CustomSliverFillRemainingFooter(
          padding: AppSizes.bodyHorizontalPadding(context),
          buttonTitle: translate(context).sendOffer,
          onFuturePressed: () async {},
        ),
      ],
    );
  }
}
