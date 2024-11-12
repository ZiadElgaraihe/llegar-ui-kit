import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/recent_search_section.dart';
import 'package:llegar/modules/home/presentation/widgets/search_result_section.dart';
import 'package:llegar/modules/home/presentation/widgets/search_text_field.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  late FocusNode _focusNode;
  late TextEditingController _controller;
  late ValueNotifier<String> _searchText;

  @override
  void initState() {
    super.initState();
    _searchText = ValueNotifier<String>('');
    _controller = TextEditingController();
    _focusNode = FocusNode();

    Future.delayed(
      const Duration(milliseconds: 300),
    ).then(
      (value) => _focusNode.requestFocus(),
    );

    _focusNode.addListener(_focusListener);
    _controller.addListener(_controllerListener);
  }

  void _controllerListener() {
    _searchText.value = _controller.text;
  }

  void _focusListener() {
    if ((!_focusNode.hasFocus) && _controller.text.isEmpty) {
      // This condition verifies whether the user is attempting to navigate 
      // back from the current view using the system back button, 
      // thereby preventing double popping of the view.
      if (ModalRoute.of(context)?.isCurrent == true) {
        Navigator.pop(context);
      }
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_focusListener);
    _controller.removeListener(_controllerListener);
    _focusNode.dispose();
    _controller.dispose();
    _searchText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: Column(
        children: [
          AppSizes.height24,
          Hero(
            tag: AppStrings.searchHeroTag,
            child: SearchTextField(
              controller: _controller,
              focusNode: _focusNode,
              readOnly: false,
            ),
          ),
          AppSizes.height16,
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: _searchText,
              builder: (context, searchText, child) => (searchText.isEmpty)
                  ? const RecentSearchSection()
                  : SearchResultSection(
                      numberOfResults:
                          'cameras'.startsWith(searchText.toLowerCase())
                              ? 10
                              : 0,
                      searchText: searchText,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
