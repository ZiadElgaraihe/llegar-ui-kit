import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:llegar/core/domain/entities/address_entity.dart';
import 'package:llegar/core/presentation/widgets/location_item.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class ShippingAddressChoices extends StatefulWidget {
  const ShippingAddressChoices({
    super.key,
    required this.onSelectAddress,
  });

  final void Function(AddressEntity address) onSelectAddress;

  @override
  State<ShippingAddressChoices> createState() => _ShippingAddressChoicesState();
}

class _ShippingAddressChoicesState extends State<ShippingAddressChoices> {
  int _selectedIndex = 0;
  final List<AddressEntity> _addresses = <AddressEntity>[
    const AddressEntity(
      title: 'Home',
      address: '"123 Main St, Apt 4B, Anytown, State 12345"',
      isDefault: true,
      coordinates: LatLng(30.044170, 31.235665),
    ),
    const AddressEntity(
      title: 'Office',
      address: '"789 Oak St, Unit 3B, Anytown, State 12345"',
      coordinates: LatLng(31.191403, 29.904067),
    ),
    const AddressEntity(
      title: 'Apartment',
      address: '"123 Main St, Apt 4B, Anytown, State 12345"',
      coordinates: LatLng(30.044170, 31.235665),
    ),
    const AddressEntity(
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
          GestureDetector(
            onTap: () {
              widget.onSelectAddress(_addresses[i]);
              _selectedIndex = i;
              setState(() {});
            },
            child: LocationItem(
              address: _addresses[i],
              trailing: Icon(
                (_selectedIndex == i)
                    ? Icons.check_box_rounded
                    : Icons.check_box_outlined,
                size: 24,
                color: mainThemeColor(context),
              ),
            ),
          ),
          if (i < (_addresses.length - 1)) AppSizes.height16,
        ],
      ],
    );
  }
}
