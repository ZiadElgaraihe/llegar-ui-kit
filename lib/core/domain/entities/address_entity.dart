import 'package:latlong2/latlong.dart';

class AddressEntity {
  final String address;
  final LatLng coordinates;
  final bool isDefault;
  final String title;

  const AddressEntity({
    required this.address,
    required this.coordinates,
    required this.title,
    this.isDefault = false,
  });
}
