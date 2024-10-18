import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/responsive_items_list.dart';
import 'package:llegar/modules/home/presentation/widgets/no_results_found_section.dart';
import 'package:llegar/modules/home/presentation/widgets/search_result_header.dart';

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
                )
              : const NoResultsFoundSection(),
        ),
      ],
    );
  }
}
