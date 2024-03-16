part of 'course_cubit.dart';




sealed class CourseState {}

final class CourseInitial extends CourseState {}


class ViewAllCourseData extends CourseState{
  final Coursemodel models;
  ViewAllCourseData({required this.models, });
}



