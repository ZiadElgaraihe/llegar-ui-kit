import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/home/presentation/widgets/filter_bottom_sheet.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/utils/functions/show_custom_modal_bottom_sheet.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.readOnly,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.onTap,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final VoidCallback? onTap;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: 42,
        child: TextField(
          controller: controller,
          focusNode: focusNode,
          readOnly: readOnly,
          onTap: onTap,
          onChanged: onChanged,
          cursorColor: AppColors.prussianBlue,
          decoration: InputDecoration(
            hintText: translate(context).search,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcons.search,
                colorFilter: readOnly
                    ? const ColorFilter.mode(
                        AppColors.darkGrey,
                        BlendMode.srcATop,
                      )
                    : null,
              ),
            ),
            suffixIcon: IconButton(
              onPressed: readOnly
                  ? null
                  : () {
                      showCustomModalBottomSheet(
                        context,
                        height: MediaQuery.sizeOf(context).height * 0.8,
                        builder: (context) => const FilterBottomSheet(),
                      );
                    },
              style: IconButton.styleFrom(
                foregroundColor: AppColors.prussianBlue,
              ),
              icon: SvgPicture.asset(
                AppIcons.filter,
                colorFilter: readOnly
                    ? const ColorFilter.mode(
                        AppColors.darkGrey,
                        BlendMode.srcATop,
                      )
                    : null,
              ),
            ),
            focusedBorder: readOnly
                ? const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
