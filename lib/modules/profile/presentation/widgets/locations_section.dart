import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/address_entity.dart';
import 'package:llegar/core/presentation/widgets/location_item.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class LocationsSection extends StatelessWidget {
  const LocationsSection({
    super.key,
  });

  static const List<AddressEntity> _addresses = <AddressEntity>[
    AddressEntity(
      address: '"123 Main St, Apt 4B, Anytown, State 12345"',
      title: 'Home',
    ),
    AddressEntity(
      address: '"789 Oak St, Unit 3B, Anytown, State 12345"',
      title: 'Office',
    ),
    AddressEntity(
      address: '"123 Main St, Apt 4B, Anytown, State 12345"',
      title: 'Apartment',
    ),
    AddressEntity(
      address: '"123 Main St, Apt 4B, Anytown, State 12345"',
      title: 'Parent\'s House',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < _addresses.length; i++) ...[
          LocationItem(
            onEditTapped: () {},
            address: _addresses[i],
          ),
          if (i < (_addresses.length - 1)) AppSizes.height16,
        ],
      ],
    );
  }
}
