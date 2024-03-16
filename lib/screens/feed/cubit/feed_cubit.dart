import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trogon_media_test2/models/feedmodel.dart';
import 'package:http/http.dart' as http;
part 'feed_state.dart';

class FeedCubit extends Cubit<FeedState> {
  FeedCubit() : super(FeedInitial()){
    getFeedData();
  }


getFeedData()async{
  final respone = await http.get(Uri.parse("https://focusarea.in/app/api/feed?auth_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ2YWxpZGl0eSI6MSwic3RhdHVzIjoxLCJkZXZpY2VfaWQiOiJhOWExZDBjNDYzMjk4Zjc5IiwidmFsaWRpdHlfbWVzc2FnZSI6IkxvZ2luIFN1Y2Nlc3NmdWwiLCJ1c2VyX2lkIjoiMTA5MjEiLCJmaXJzdF9uYW1lIjoiaGlzaGFtIiwibGFzdF9uYW1lIjoiIiwiZW1haWwiOiI5MTg2MDYwMTc1MjciLCJyb2xlIjoidXNlciJ9.fg9qT6E2rPpxlQDHuwJ0Nyr27Vt5noaQoA9uLeDpIwQ"));
  print(respone.body);
  final res = jsonDecode(respone.body);
  // final value = FeedModel.fromJson(res);
  List<FeedModel> value =List<FeedModel>.from(res.map((x) => FeedModel.fromJson(x)));
  
  
  emit(ViewAllFeedData( feeds: value));
  
}



}
