import 'package:flutter/material.dart';
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
    ),
    const AddressEntity(
      title: 'Office',
      address: '"789 Oak St, Unit 3B, Anytown, State 12345"',
    ),
    const AddressEntity(
      title: 'Apartment',
      address: '"123 Main St, Apt 4B, Anytown, State 12345"',
    ),
    const AddressEntity(
      title: 'Parent\'s House',
      address: '"123 Main St, Apt 4B, Anytown, State 12345"',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < _addresses.length; i++) ...[
          LocationItem(
            address: _addresses[i],
            trailing: GestureDetector(
              onTap: () {
                widget.onSelectAddress(_addresses[i]);
                _selectedIndex = i;
                setState(() {});
              },
              child: Icon(
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
