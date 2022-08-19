import 'package:equatable/equatable.dart';

abstract class LayoutState extends Equatable {
  const LayoutState();

  @override
  List<Object> get props => [];
}

class LayoutInitialState extends LayoutState {}

class ChangeScreenState extends LayoutState {
  final int index;

  const ChangeScreenState(this.index);
}
