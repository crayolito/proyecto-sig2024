import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authetication_event.dart';
part 'authetication_state.dart';

class AutheticationBloc extends Bloc<AutheticationEvent, AutheticationState> {
  AutheticationBloc() : super(const AutheticationState()) {
    on<OnChangedTypeMap>((event, emit) {
      emit(state.copyWith(typeMap: event.typeMap));
    });
  }
}
