import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:trogon_media_test2/models/coursemodel.dart';
import 'package:http/http.dart' as http;
part 'course_state.dart';

class CourseCubit extends Cubit<CourseState> {
  CourseCubit(BuildContext context) : super(CourseInitial()){
  getCourseData();





  }



getCourseData()async{
  final respone = await http.get(Uri.parse("https://trogon.info/tutorpro/lms_demo/api/my_course_data?auth_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ2YWxpZGl0eSI6MSwic3RhdHVzIjoxLCJkZXZpY2VfaWQiOiJhOGMwZWIxYjA3YjEzNTEzIiwidmFsaWRpdHlfbWVzc2FnZSI6IkxvZ2luIFN1Y2Nlc3NmdWwiLCJ1c2VyX2lkIjoiMTQiLCJuYW1lIjoiYWRlZWIgdGVzdCAiLCJlbWFpbCI6IjkxOTY1NjY3MDg2NyIsInJvbGUiOiJ1c2VyIn0.dgRNiQdBNzZ_tGoPMxu3aqBuveTG8zrT3zZheVhYpQ4"));
  print(respone.body);
  final res = jsonDecode(respone.body);
  final value = Coursemodel.fromJson(res);
  
  
  emit(ViewAllCourseData(models: value));
  
}


}




