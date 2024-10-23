import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/clear_all_recent_search_list_tile.dart';
import 'package:llegar/modules/home/presentation/widgets/recent_search_list_tile.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class RecentSearchSection extends StatelessWidget {
  const RecentSearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClearAllRecentSearchListTile(
          onClearAllPressed: () {},
        ),
        Divider(
          color: secondaryThemeColor(context),
          indent: 0,
          endIndent: 0,
          height: 32,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => RecentSearchListTile(
              onRemovePressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
