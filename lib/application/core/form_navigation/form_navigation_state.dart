part of 'form_navigation_bloc.dart';

@freezed
abstract class FormNavigationState with _$FormNavigationState {
  const factory FormNavigationState.index(int currentIndex) = _Index;
}
