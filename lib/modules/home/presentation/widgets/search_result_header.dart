import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class SearchResultsHeader extends StatelessWidget {
  const SearchResultsHeader({
    super.key,
    required this.numberOfResults,
    required this.searchText,
  });

  final int numberOfResults;
  final String searchText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: RichText(
        text: TextSpan(
          style: AppTextStyles.bold20(context).copyWith(
            fontFamily: AppStrings.urbanistFontFamily,
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.prussianBlue,
              dark: AppColors.orange,
            ),
          ),
          children: [
            TextSpan(text: translate(context).resultsFor),
            TextSpan(
              text: ' "$searchText"',
              style: TextStyle(
                color: valueBasedOnTheme<Color>(
                  context,
                  light: AppColors.black,
                  dark: AppColors.white,
                ),
              ),
            ),
          ],
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        '$numberOfResults ${translate(context).found}',
        style: AppTextStyles.bold14(context).copyWith(
          color: valueBasedOnTheme<Color>(
            context,
            light: AppColors.black,
            dark: AppColors.white,
          ),
        ),
      ),
    );
  }
}
