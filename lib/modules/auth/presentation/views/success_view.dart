import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/auth/domain/entities/success_view_entity.dart';
import 'package:llegar/modules/auth/presentation/widgets/success_view_body.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({
    super.key,
    required this.successViewEntity,
  });

  final SuccessViewEntity successViewEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(toolbarHeight: 0),
      body: SuccessViewBody(
        successViewEntity: successViewEntity,
      ),
    );
  }
}
