import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'form_navigation_event.dart';
part 'form_navigation_state.dart';
part 'form_navigation_bloc.freezed.dart';

@injectable
class FormNavigationBloc
    extends Bloc<FormNavigationEvent, FormNavigationState> {
  FormNavigationBloc() : super(const FormNavigationState.index(0));

  @override
  Stream<FormNavigationState> mapEventToState(
    FormNavigationEvent event,
  ) async* {
    yield FormNavigationState.index(event.index);
  }
}
