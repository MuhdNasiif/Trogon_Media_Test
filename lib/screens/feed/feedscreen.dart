import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trogon_media_test2/screens/feed/components.dart';
import 'package:trogon_media_test2/screens/feed/cubit/feed_cubit.dart';
import 'package:trogon_media_test2/screens/homescreen/components.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

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
          create: (context) => FeedCubit(),
          child: BlocBuilder<FeedCubit, FeedState>(
            builder: (context, state) {
              if (state is ViewAllFeedData){
              return Column(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.feeds.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 227,
                                width: double
                                    .infinity, // Set width to take the full width
                                child:  Image.network(
                            state.feeds[index].data!.first.image.toString(),
                            fit: BoxFit.cover,
                          )
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/like.png",
                                            height: 10,
                                            width: 10,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                           Text(
                                            state.feeds[index].data!.first.likeCount.toString(),
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Tauri',
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "NEET EXAM 2023",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Tauri',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/whatsapp (1).png",
                                            height: 10,
                                            width: 10,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Image.asset(
                                            "assets/save-instagram.png",
                                            height: 10,
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "Date",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Tauri',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Neet Exam Date",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Tauri',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Tauri',
                                  fontWeight: FontWeight.normal,
                                ),
                                maxLines: 10,
                              )
                            ],
                          ),
                        );
                      }),
                ],
              );
              }
               else {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
            },
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarTrogon(),
    );
  }
}
