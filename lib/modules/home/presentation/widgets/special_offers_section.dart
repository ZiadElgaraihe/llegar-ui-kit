import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/home_section_header.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_categories_section.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_container.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_carousel_slider.dart';
import 'package:llegar/shared/constants/app_routes.dart';
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
          onPressed: () {
            _onSeeAllPressed(context);
          },
        ),
        AppSizes.height36,
        const SpecialOffersConatiner(
          child: SpecialOffersCarouselSlider(),
        ),
        AppSizes.height24,
        const SpecialOffersCategoriesSection(),
      ],
    );
  }

  void _onSeeAllPressed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.specialOffersView);
  }
}
