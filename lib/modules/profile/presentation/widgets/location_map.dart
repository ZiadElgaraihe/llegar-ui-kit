import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:llegar/core/presentation/widgets/profile_photo.dart';

class LocationMap extends StatefulWidget {
  const LocationMap({
    super.key,
    required this.mapController,
    required this.onTap,
    this.initialLocation,
  });

  final LatLng? initialLocation;
  final MapController mapController;
  final void Function(TapPosition tapPosition, LatLng point) onTap;

  @override
  State<LocationMap> createState() => _LocationMapState();
}

class _LocationMapState extends State<LocationMap> {
  late final ValueNotifier<LatLng?> _latLng;

  @override
  void initState() {
    super.initState();
    _latLng = ValueNotifier(widget.initialLocation);
  }

  @override
  void dispose() {
    _latLng.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.7,
      child: FlutterMap(
        mapController: widget.mapController,
        options: MapOptions(
          initialCenter:
              widget.initialLocation ?? const LatLng(30.044170, 31.235665),
          initialZoom: 6,
          maxZoom: 18,
          minZoom: 6,
          onTap: (tapPosition, point) {
            _latLng.value = point;
            widget.onTap(tapPosition, point);
          },
        ),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
          ),
          ValueListenableBuilder(
            valueListenable: _latLng,
            builder: (context, latLng, child) => MarkerLayer(
              markers: [
                if (latLng != null)
                  Marker(
                    point: latLng,
                    child: const ProfilePhoto(size: 55),
                    height: 55,
                    width: 55,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
