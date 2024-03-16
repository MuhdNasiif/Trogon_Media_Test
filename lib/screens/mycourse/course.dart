import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trogon_media_test2/screens/homescreen/components.dart';
import 'package:trogon_media_test2/screens/mycourse/components.dart';
import 'package:trogon_media_test2/screens/mycourse/cubit/course_cubit.dart';

class MyCoursePage extends StatelessWidget {
  const MyCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.blue,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => CourseCubit(context),
          child: BlocBuilder<CourseCubit, CourseState>(
            builder: (context, state) {
              if (state is ViewAllCourseData){
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(children: [
                  Container(
                    height: 195,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Image.asset(
                      "assets/Group 36459.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                      //height: 102,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(219, 237, 248, 1),
                        //color: Colors.white,
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Image.asset("assets/camera.png"),
                                const Text(
                                  "Live Class",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("assets/download 1.png"),
                                const Text(
                                  "Practice",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("assets/download (1) 1.png"),
                                const Text(
                                  "Live Class",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                  //  Subjects(),
SizedBox(height: 30,),
                  GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: state.models.data!.subjects!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 111,
                            width: 85,
                            child: Column(
                              children: [
                                 Image.network(state.models.data!.subjects![index].icon.toString(), fit: BoxFit.contain,height: 60,width: 60,),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  state.models.data!.subjects![index].title.toString(),
                                  style: TextStyle(
                                      fontSize: 11, fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ]),
              );
            }
            else{
              return Center(child: CupertinoActivityIndicator(),);
            }
            },
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarTrogon(),
    );
  }
}
