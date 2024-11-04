class AddressEntity {
  final String address;
  final bool isDefault;
  final String title;
  // final LatLng coordinates;

  const AddressEntity({
    required this.address,
    required this.title,
    this.isDefault = false,
  });
}
