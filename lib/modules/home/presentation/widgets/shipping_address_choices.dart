import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/address_entity.dart';
import 'package:llegar/core/presentation/widgets/location_item.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

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
      address: '"123 Main St, Apt 4B, Anytown, State 12345"',
      title: 'Home',
    ),
    const AddressEntity(
      address: '"789 Oak St, Unit 3B, Anytown, State 12345"',
      title: 'Office',
    ),
    const AddressEntity(
      address: '"123 Main St, Apt 4B, Anytown, State 12345"',
      title: 'Apartment',
    ),
    const AddressEntity(
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
                color: valueBasedOnTheme<Color>(
                  context,
                  light: AppColors.prussianBlue,
                  dark: AppColors.orange,
                ),
              ),
            ),
          ),
          if (i < (_addresses.length - 1)) AppSizes.height16,
        ],
      ],
    );
  }
}
