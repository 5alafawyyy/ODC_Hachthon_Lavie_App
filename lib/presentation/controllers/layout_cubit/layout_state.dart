import 'package:equatable/equatable.dart';

abstract class LayoutState extends Equatable {
  const LayoutState();

  @override
  List<Object> get props => [];
}

class LayoutInitialState extends LayoutState {}

class HomeScreenState extends LayoutState {}
class BlogScreenState extends LayoutState {}
class QRCodeScreenState extends LayoutState {}
class ProfileScreenState extends LayoutState {}
class NotificationScreenState extends LayoutState {}
