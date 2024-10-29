import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/core/presentation/widgets/make_an_offer_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class MakeAnOfferView extends StatelessWidget {
  const MakeAnOfferView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: translate(context).makeAnOffer,
        ),
        body: const MakeAnOfferViewBody(),
      ),
    );
  }
}
