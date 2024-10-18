import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/home_section_header.dart';
import 'package:llegar/modules/home/presentation/widgets/responsive_items_sliver_list.dart';
import 'package:llegar/modules/home/presentation/widgets/search_text_field.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_section.dart';
import 'package:llegar/modules/home/presentation/widgets/top_deals_categories_section.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodySymmetricPadding(context),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                Hero(
                  tag: AppStrings.searchHeroTag,
                  child: SearchTextField(
                    readOnly: true,
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.searchView);
                    },
                  ),
                ),
                AppSizes.height24,
                const SpecialOffersSection(),
                AppSizes.height24,
                HomeSectionHeader(
                  title: translate(context).topDeals,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: TopDealsCategoriesSection(
            onSelectCategory: (value) {},
          ),
        ),
        const ReponsiveItemsSliverList(),
      ],
    );
  }
}
