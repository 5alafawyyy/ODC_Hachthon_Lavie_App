part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  final SharedProductsModel sharedProductsModel;

  const HomeSuccessState(this.sharedProductsModel);
}

class HomeFailureState extends HomeState {
  final String message;

  const HomeFailureState(this.message);
}

