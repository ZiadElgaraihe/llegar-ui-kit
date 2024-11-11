import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:llegar/core/domain/entities/address_entity.dart';
import 'package:llegar/core/presentation/widgets/location_item.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class LocationsSection extends StatelessWidget {
  const LocationsSection({
    super.key,
  });

  static const List<AddressEntity> _addresses = <AddressEntity>[
    AddressEntity(
      title: 'Home',
      isDefault: true,
      address: '"123 Main St, Apt 4B, Anytown, State 12345"',
      coordinates: LatLng(30.044170, 31.235665),
    ),
    AddressEntity(
      title: 'Office',
      address: '"789 Oak St, Unit 3B, Anytown, State 12345"',
      coordinates: LatLng(31.191403, 29.904067),
    ),
    AddressEntity(
      title: 'Apartment',
      address: '"123 Main St, Apt 4B, Anytown, State 12345"',
      coordinates: LatLng(30.044170, 31.235665),
    ),
    AddressEntity(
      title: 'Parent\'s House',
      address: '"123 Main St, Apt 4B, Anytown, State 12345"',
      coordinates: LatLng(29.977410, 32.530895),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < _addresses.length; i++) ...[
          LocationItem(
            onEditTapped: () {
              Navigator.pushNamed(
                context,
                AppRoutes.locationDetailsView,
                arguments: _addresses[i],
              );
            },
            address: _addresses[i],
          ),
          if (i < (_addresses.length - 1)) AppSizes.height16,
        ],
      ],
    );
  }
}
