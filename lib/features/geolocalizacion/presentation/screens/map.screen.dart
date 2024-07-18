import 'package:app_sig_2014/blocs/auth/authetication_bloc.dart';
import 'package:app_sig_2014/blocs/googleMap/google_map_bloc.dart';
import 'package:app_sig_2014/blocs/location/location_bloc.dart';
import 'package:app_sig_2014/features/geolocalizacion/presentation/screens/map-loading.sreen.dart';
import 'package:app_sig_2014/features/geolocalizacion/presentation/views/google-map.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    final autheticationBloc =
        BlocProvider.of<AutheticationBloc>(context, listen: true);

    return BlocBuilder<LocationBloc, LocationState>(
        builder: (context, locationState) {
      if (locationState.lastKnowLocationGM == null) {
        return const MapLoading();
      }

      return Stack(
        children: [
          autheticationBloc.state.typeMap == TypeMap.googleMap
              ? const GoogleMap()
              : const MapBox(),
        ],
      );
    });
  }
}

class GoogleMap extends StatelessWidget {
  const GoogleMap({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoogleMapBloc, GoogleMapState>(
        builder: (context, googleMapState) {
      return GoogleMapView(
        polygons: googleMapState.polygons.values.toSet(),
        markers: googleMapState.markers.values.toSet(),
        polylines: googleMapState.polylines.values.toSet(),
      );
    });
  }
}

class MapBox extends StatelessWidget {
  const MapBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
