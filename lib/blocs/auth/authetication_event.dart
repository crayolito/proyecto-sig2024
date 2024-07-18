part of 'authetication_bloc.dart';

class AutheticationEvent extends Equatable {
  const AutheticationEvent();

  @override
  List<Object> get props => [];
}

class OnChangedTypeMap extends AutheticationEvent {
  final TypeMap typeMap;
  const OnChangedTypeMap(this.typeMap);
}
