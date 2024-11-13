import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/presentation/widgets/ans_container.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class AnsSection extends StatelessWidget {
  const AnsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppSizes.bodySymmetricPadding(context),
      itemCount: 3,
      itemBuilder: (context, index) => AnsContainer(answerNumber: index + 1),
      separatorBuilder: (context, index) => AppSizes.height16,
    );
  }
}
