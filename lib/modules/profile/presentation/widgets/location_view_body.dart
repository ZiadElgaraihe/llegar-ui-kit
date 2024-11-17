import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/profile/presentation/widgets/locations_section.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class LocationViewBody extends StatelessWidget {
  const LocationViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: const SliverToBoxAdapter(
            child: Column(
              children: [
                AppSizes.height24,
                LocationsSection(),
              ],
            ),
          ),
        ),
        CustomSliverFillRemainingFooter(
          buttonTitle: translate(context).addNewLocation,
          onPressed: () {
            _onPressed(context);
          },
        ),
      ],
    );
  }

  void _onPressed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.locationDetailsView);
  }
}
