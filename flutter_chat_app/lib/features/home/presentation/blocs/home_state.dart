import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  List<String> get messages => [];

  @override
  List<Object?> get props => [];
}


class HomeInitial extends HomeState {
  final List<String> messages;

  const HomeInitial({required this.messages});

  @override
  List<Object?> get props => [messages];
}


class HomeLoading extends HomeState {
  final List<String> messages;

  const HomeLoading({required this.messages});

  @override
  List<Object?> get props => [messages];
}


class HomeLoaded extends HomeState {
  final List<String> messages;

  const HomeLoaded({required this.messages});

  @override
  List<Object?> get props => [messages];
}

class HomeError extends HomeState {
  final List<String> messages;
  final String error;

  const HomeError({required this.messages, required this.error});

  @override
  List<Object?> get props => [messages, error];
}
