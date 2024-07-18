import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'google_map_event.dart';
part 'google_map_state.dart';

class GoogleMapBloc extends Bloc<GoogleMapEvent, GoogleMapState> {
  GoogleMapController? mapController;
  CameraPosition? cameraPosition;

  GoogleMapBloc() : super(GoogleMapState()) {
    on<OnMapInitialControllerMap>((event, emit) async {
      mapController = event.controller;
      emit(state.copyWith(status: GoogleMapStatus.construido));
    });

    on<OnMapInitialControllerCamera>((event, emit) async {
      cameraPosition = event.cameraPosition;
      emit(state.copyWith(status: GoogleMapStatus.construido));
    });
  }

  void moveCameraMyLocation(LatLng newLocation) {
    final cameraUpdate = CameraUpdate.newLatLngZoom(newLocation, 17.5);
    mapController?.animateCamera(cameraUpdate);
  }

  void reorientMap() {
    if (mapController != null && cameraPosition != null) {
      mapController!.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
              target: cameraPosition!.target, zoom: cameraPosition!.zoom)));
    }
  }

  @override
  Future<void> close() {
    mapController?.dispose();
    add(const OnResetState());
    return super.close();
  }
}
