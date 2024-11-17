import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/item_details_entity.dart';
import 'package:llegar/core/presentation/widgets/responsive_items_list.dart';
import 'package:llegar/modules/home/presentation/widgets/no_results_found_section.dart';
import 'package:llegar/modules/home/presentation/widgets/search_result_header.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_strings.dart';

class SearchResultSection extends StatelessWidget {
  const SearchResultSection({
    super.key,
    required this.numberOfResults,
    required this.searchText,
  });

  final int numberOfResults;
  final String searchText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchResultsHeader(
          numberOfResults: numberOfResults,
          searchText: searchText,
        ),
        Expanded(
          child: numberOfResults != 0
              ? ResponsiveItemsList(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  itemCount: numberOfResults,
                  heroTag: (index) =>
                      '${AppStrings.searchItemHeroTag}$index',
                  onTap: (index) {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.itemDetailsView,
                      arguments: ItemDetailsEntity(
                        heroTag: '${AppStrings.searchItemHeroTag}$index',
                      ),
                    );
                  },
                )
              : const NoResultsFoundSection(),
        ),
      ],
    );
  }
}
