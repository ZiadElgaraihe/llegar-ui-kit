import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/address_entity.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/profile/presentation/widgets/location_details_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class LocationDetailsView extends StatelessWidget {
  const LocationDetailsView({
    super.key,
    this.addressEntity,
  });

  final AddressEntity? addressEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).location,
      ),
      body: LocationDetailsViewBody(addressEntity: addressEntity),
    );
  }
}
