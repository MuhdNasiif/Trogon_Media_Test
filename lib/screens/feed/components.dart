import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialMediaFeed extends StatelessWidget {
  SocialMediaFeed({
    Key? key,
    
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          
          SizedBox(
            height: 227,
            width: double.infinity, // Set width to take the full width
            child: Image.asset(
              "assets/hisham 3.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     Image.asset("assets/like.png",height: 10,width: 10,),
                     const SizedBox(width: 5,),
                     const Text("168", style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Tauri',
                        fontWeight: FontWeight.bold,
                      ),)
                   ],
                 ),
         
                 const SizedBox(height: 5,),
                 const Text("NEET EXAM 2023", style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Tauri',
                    fontWeight: FontWeight.bold,
                  ),)
               ],
             ),
             SizedBox(height: 10,),
               Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     Image.asset("assets/whatsapp (1).png",height: 10,width: 10,),
                     const SizedBox(width: 5,),
                       Image.asset("assets/save-instagram.png",height: 10,width: 10,),
                   ],
                 ),
                  const SizedBox(height: 5,),
                 const Text("Date", style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Tauri',
                    fontWeight: FontWeight.bold,
                  ),)
               ],
             ),
           ],
         ),
         SizedBox(height: 10,),
         Text("Neet Exam Date", style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Tauri',
                      fontWeight: FontWeight.bold,
                    ),),



                    Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Tauri',
                      fontWeight: FontWeight.normal,
                    ),maxLines: 10,)
        
        ],
      ),
    );
  }
}