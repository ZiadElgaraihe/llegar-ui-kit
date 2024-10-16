import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    this.onChanged,
    this.onTap,
    required this.readOnly,
  });

  final void Function(String)? onChanged;
  final VoidCallback? onTap;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: TextField(
        readOnly: readOnly,
        onTap: onTap,
        onChanged: onChanged,
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
            onPressed: readOnly ? null : () {},
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
    );
  }
}
