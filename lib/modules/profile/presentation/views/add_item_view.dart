import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/profile/presentation/widgets/add_item_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class AddItemView extends StatelessWidget {
  const AddItemView({
    super.key,
    required this.isEdit,
  });

  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: isEdit
          ? translate(context).editItem
          : translate(context).addItem,
        ),
        body: AddItemViewBody(isEdit: isEdit),
      ),
    );
  }
}
