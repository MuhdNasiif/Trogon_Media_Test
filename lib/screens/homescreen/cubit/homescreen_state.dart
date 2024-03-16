part of 'homescreen_cubit.dart';

@immutable
sealed class HomescreenState {}

final class HomescreenInitial extends HomescreenState {}


class ViewAllData extends HomescreenState{
  final Homemodel model;
  ViewAllData({required this.model});
}

