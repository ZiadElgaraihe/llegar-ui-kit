import 'package:flutter/material.dart';

class PremiumPackageEntity {
  final String price;
  final List<String> Function(BuildContext context) features;

  const PremiumPackageEntity({
    required this.price,
    required this.features,
  });
}
