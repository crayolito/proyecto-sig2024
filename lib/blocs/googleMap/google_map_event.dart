part of 'google_map_bloc.dart';

class GoogleMapEvent extends Equatable {
  const GoogleMapEvent();

  @override
  List<Object> get props => [];
}

// EVENTO PARA INICIALIZAR EL CONTROLADOR DEL MAPA DE GOOGLE
class OnMapInitialControllerMap extends GoogleMapEvent {
  final GoogleMapController controller;
  const OnMapInitialControllerMap(this.controller);
}

// EVENTO PARA INICIALIZAR EL CONTROLADOR DE CAMARA DEL MAPA DE GOOGLE
class OnMapInitialControllerCamera extends GoogleMapEvent {
  final CameraPosition cameraPosition;
  const OnMapInitialControllerCamera(this.cameraPosition);
}

class OnInitFigureMap extends GoogleMapEvent {
  const OnInitFigureMap();
}

class OnClearFigureMap extends GoogleMapEvent {
  const OnClearFigureMap();
}

class OnResetState extends GoogleMapEvent {
  const OnResetState();
}

