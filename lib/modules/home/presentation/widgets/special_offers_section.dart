import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/home_section_header.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_categories_section.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_container.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_custom_page_view.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class SpecialOffersSection extends StatelessWidget {
  const SpecialOffersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSectionHeader(
          title: translate(context).specialOffers,
          onPressed: () {},
        ),
        AppSizes.height36,
        const SpecialOffersConatiner(
          child: SpecialOffersPageView(),
        ),
        AppSizes.height24,
        const SpecialOffersCategoriesSection(),
      ],
    );
  }
}
