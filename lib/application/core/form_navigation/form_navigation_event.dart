part of 'form_navigation_bloc.dart';

@freezed
abstract class FormNavigationEvent with _$FormNavigationEvent {
  const factory FormNavigationEvent.pageChanged(int index) = _PageChanged;
}
