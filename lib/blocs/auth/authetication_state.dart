part of 'authetication_bloc.dart';

enum TypeMap { googleMap, mapBox }

class AutheticationState extends Equatable {
  // Tipo de mapa escogido
  final TypeMap typeMap;

  const AutheticationState({this.typeMap = TypeMap.googleMap});

  AutheticationState copyWith({TypeMap? typeMap}) =>
      AutheticationState(typeMap: typeMap ?? this.typeMap);

  @override
  List<Object> get props => [typeMap];
}
