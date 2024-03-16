import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trogon_media_test2/screens/homescreen/components.dart';
import 'package:trogon_media_test2/screens/homescreen/cubit/homescreen_cubit.dart';
import 'package:trogon_media_test2/screens/mycourse/course.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          create: (context) => HomescreenCubit(context),
          child: BlocBuilder<HomescreenCubit, HomescreenState>(
              builder: (context, state) {
            if (state is ViewAllData) {
              return Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 164,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(11)),
                      child: PageView.builder(
                        allowImplicitScrolling: true,
                        itemCount: state.model.data!.adBanner!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return
                          
                          
                          
                           Image.network(
                            state.model.data!.adBanner![index].image.toString(),
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                      //  Image.asset(
                      //   "assets/hisham 3.png",
                      //   fit: BoxFit.fill,
                      // ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Our Programmes",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: state.model.data!.topCourses!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 180,
                              width: 164,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11)),
                              child: Column(
                                children: [
                                  Container(
                                    width: 164,
                                    height: 110,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              state.model.data!
                                                  .topCourses![index].thumbnail
                                                  .toString(),
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(11)),
                                      ),
                                      
                                       Center(
                                         child: Text(
                                          state.model.data!.topCourses![index]
                                              .title
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                                                               ),
                                       )
                                ],
                              ),
                            ),
                          );
                        }),
                    Image.asset("assets/Group 36439.png")
                  ],
                ),
              );
            } else {
              return Center(
                child: CupertinoActivityIndicator(),
              );
            }
          }),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarTrogon(),
    );
  }
}
//-------------------------------------
