import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:llegar/modules/profile/presentation/widgets/location_draggable_sheet.dart';
import 'package:llegar/modules/profile/presentation/widgets/location_map.dart';

class LocationDetailsViewBody extends StatefulWidget {
  const LocationDetailsViewBody({
    super.key,
  });

  @override
  State<LocationDetailsViewBody> createState() =>
      _LocationDetailsViewBodyState();
}

class _LocationDetailsViewBodyState extends State<LocationDetailsViewBody> {
  late final DraggableScrollableController _draggableController;
  late final MapController _mapController;

  @override
  void initState() {
    super.initState();
    _draggableController = DraggableScrollableController();
    _mapController = MapController();
  }

  @override
  void dispose() {
    _draggableController.dispose();
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LocationMap(
          mapController: _mapController,
          onTap: (tapPosition, point) {
            _draggableController.animateTo(
              0.6,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
            );
          },
        ),
        LocationDraggableSheet(draggableController: _draggableController),
        PositionedDirectional(
          top: 20,
          end: 12,
          child: FloatingActionButton(
            heroTag: 'current_location',
            onPressed: () {},
            child: const Icon(Icons.my_location_rounded),
          ),
        ),
        PositionedDirectional(
          top: 90,
          end: 12,
          child: FloatingActionButton(
            heroTag: 'zoom_in',
            onPressed: () {
              _mapController.move(
                _mapController.camera.center,
                _mapController.camera.zoom + 0.5,
              );
            },
            child: const Icon(Icons.add),
          ),
        ),
        PositionedDirectional(
          top: 160,
          end: 12,
          child: FloatingActionButton(
            heroTag: 'zoom_out',
            onPressed: () {
              _mapController.move(
                _mapController.camera.center,
                _mapController.camera.zoom - 0.5,
              );
            },
            child: const Icon(Icons.remove),
          ),
        ),
      ],
    );
  }
}
