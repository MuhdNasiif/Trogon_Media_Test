import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:trogon_media_test2/models/homemodel.dart';

part 'homescreen_state.dart';



 class HomescreenCubit extends Cubit<HomescreenState> {
  HomescreenCubit(this.context) : super(HomescreenInitial()){
    getData();
  }
  BuildContext context;
getData()async{
  final respone = await http.get(Uri.parse("https://trogon.info/tutorpro/lms_demo/api/home_page_data?auth_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ2YWxpZGl0eSI6MSwic3RhdHVzIjoxLCJkZXZpY2VfaWQiOiJhOGMwZWIxYjA3YjEzNTEzIiwidmFsaWRpdHlfbWVzc2FnZSI6IkxvZ2luIFN1Y2Nlc3NmdWwiLCJ1c2VyX2lkIjoiMTQiLCJuYW1lIjoiYWRlZWIgdGVzdCAiLCJlbWFpbCI6IjkxOTY1NjY3MDg2NyIsInJvbGUiOiJ1c2VyIn0.dgRNiQdBNzZ_tGoPMxu3aqBuveTG8zrT3zZheVhYpQ4"));
  print(respone.body);
  final res = jsonDecode(respone.body);
  final values = Homemodel.fromJson(res);

  emit(ViewAllData( model: values));
}

}