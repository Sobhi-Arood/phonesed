part of 'bottom_navigation_bloc.dart';

@freezed
abstract class BottomNavigationState with _$BottomNavigationState {
  // const factory BottomNavigationState.initial() = _Initial;
  const factory BottomNavigationState.index(int currentIndex) = _Index;
}
